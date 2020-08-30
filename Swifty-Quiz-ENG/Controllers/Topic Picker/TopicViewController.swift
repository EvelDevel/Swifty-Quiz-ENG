
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
	@IBOutlet weak var buyButton: UIButton!
	@IBOutlet weak var categoriesTitle: UILabel!
	weak var delegate: TopicViewControllerDelegate?

	/// Проверка покупки
	let purchased = InAppPurchaseViewController.purchased

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
			_ = RandomSuperSets.getQuestions(limit: 0)
			let total = RandomSuperSets.showTotalquestionsNumber()
			buyButton.setTitle("Unlock \(total) questions", for: .normal)
		} else {
			categoriesTitle.text = "Available categories"
			buyButton.isHidden = true
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

	/// Когда нажимаем на неативную категорию - срабатывает анимация кнопки "купить"
	func popTheBuyButton() {
		buyButton.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
		UIView.animate(withDuration: 1,
					   delay: 0,
					   usingSpringWithDamping: CGFloat(1),
					   initialSpringVelocity: CGFloat(4.0),
					   options: UIView.AnimationOptions.allowUserInteraction,
					   animations: {
						self.buyButton.transform = CGAffineTransform.identity }, completion: { Void in()  }
		)
	}
}
