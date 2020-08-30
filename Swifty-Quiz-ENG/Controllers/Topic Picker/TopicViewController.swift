
//  Created by Евгений Никитин on 14.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit

protocol TopicViewControllerDelegate: class {
	func selectedCategory()
	func updateInitialView()
}

class TopicViewController: UIViewController {

	@IBOutlet weak var numberOfQuestions: UILabel!
	@IBOutlet weak var tableView: UITableView!
	@IBOutlet weak var unlockButton: UIButton!
	@IBOutlet weak var categoriesTitle: UILabel!
	weak var delegate: TopicViewControllerDelegate?

	// MARK: Сюда добавить главную проверку (была ли покупка)
	let purchased = false

	override func viewDidLoad() {
		super.viewDidLoad()
		cellRegistration()
		setDefaultNumberOfQuestions()
		setOrHideUnlockButton()
	}

	/// Обновляем выбранную категорию (моментально)
	override func viewWillDisappear(_ animated: Bool) {
		delegate?.selectedCategory()
		let currentAppVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? ""
		Game.shared.saveAppVersion(version: currentAppVersion)
	}

	/// Обновляем (убираем) кнопку "продолжить" при смене темы (с задержкой)
	override func viewDidDisappear(_ animated: Bool) {
		delegate?.updateInitialView()
	}

	/// Работа кнопки UNLOCK
	func setOrHideUnlockButton() {
		if !purchased {
			unlockButton.setTitle("Unlock \(RandomSuperSets.showTotalquestionsNumber()) questions", for: .normal)
		} else {
			categoriesTitle.text = "Available categories"
			unlockButton.isHidden = true
		}

	}
	@IBAction func unlockAllQuestions(_ sender: Any) {
		SoundPlayer.shared.playSound(sound: .menuMainButton)
	}


	func setDefaultNumberOfQuestions() {
		if SelectedTopic.shared.topic.topicTag < 10 {
			numberOfQuestions.text = SelectedTopic.shared.topic.topicName
		} else {
			numberOfQuestions.text = "\(SelectedTopic.shared.topic.topicName) (\(SelectedTopic.shared.topic.questionSet.count))"
		}
	}

	func showAlertIfNeeded() {
		if Game.shared.records.count != 0 && Game.shared.records[0].continueGameStatus == true {
			if Game.shared.showTopicAlertStatus() != true {
				let alert = UIAlertController(title: "You have an unfinished game", message: "If you choose a different category, answer at least one question of the new game, or change the settings, you will lose the opportunity to finish the unfinished game", preferredStyle: .alert)
				let okAction = UIAlertAction(title: "Continue", style: .default, handler: { action in })
				alert.addAction(okAction)
				present(alert, animated: true, completion: nil)
			}
			Game.shared.setThatWeShowedAlert()
		}
	}
}


// MARK: Настройка таблицы
extension TopicViewController: UITableViewDataSource, UITableViewDelegate {

	func cellRegistration() {
		if purchased {
			tableView.register(UINib(nibName: "CategoriesCell", bundle: nil), forCellReuseIdentifier: "CategoriesCell")
		} else {
			tableView.register(UINib(nibName: "DemoCategoriesCell", bundle: nil), forCellReuseIdentifier: "DemoCategoriesCell")
		}
	}

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if purchased {
			guard let cell = tableView.dequeueReusableCell(withIdentifier: "CategoriesCell", for: indexPath) as? CategoriesCell else {
				return UITableViewCell()
			}
			cell.delegate = self
			return cell
		} else {
			guard let cell = tableView.dequeueReusableCell(withIdentifier: "DemoCategoriesCell", for: indexPath) as? DemoCategoriesCell else {
				return UITableViewCell()
			}
			cell.delegate = self
			return cell
		}
	}
}


// MARK: Работа с делегатом CategoriesCell и DemoCategoriesCell
extension TopicViewController: CategoriesCellDelegate, DemoCategoriesCellDelegate {

	func updateNumberOfQuestions() {
		if SelectedTopic.shared.topic.topicTag < 10 {
			numberOfQuestions.text = SelectedTopic.shared.topic.topicName
		} else {
			numberOfQuestions.text = "\(SelectedTopic.shared.topic.topicName) (\(SelectedTopic.shared.topic.questionSet.count))"
		}
	}

	func showAlert() {
		self.showAlertIfNeeded()
	}
}
