
//  Created by Евгений Никитин on 14.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit
import MessageUI

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

	/// Вызов отправки письма
	func suggestQuestion(section: String) {
		userQuestionSuggestion(section: section)
	}
}


// MARK: Работа c отправкой почты
extension TopicViewController: MFMailComposeViewControllerDelegate {

    func userQuestionSuggestion(section: String) {
		showMailComposer(section: section)
        SoundPlayer.shared.playSound(sound: .menuMainButton)
    }

    func showMailComposer(section: String) {
        /// Проверяем, может ли девайс пользователя отправлять мэйлы
        guard MFMailComposeViewController.canSendMail() else {
            let alert = UIAlertController(  title: "You want to suggest your question",
                                            message: "Sorry, your device cannot send mail. Most likely, you don't have any active account in the mail application.",
                                            preferredStyle: .alert)
            let ok = UIAlertAction(         title: "Ok",
                                            style: .default,
                                            handler: { action in })
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            return
        }

        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients(["hello@swifty-quiz.online"])
        composer.setSubject(section)
		composer.setMessageBody("""
			I want to suggest my question to \(section) section
			
			category: 
			question text:
			answer A (correct one):
			answer B:
			answer C:
			answer D:
			hint text:
			link to the source:
			""", isHTML: false)
        present(composer, animated: true)
    }

    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        if let _ = error {
            let alert = UIAlertController(  title: "There is some problem with sending an e-mail",
                                            message: "",
                                            preferredStyle: .alert)
            let ok = UIAlertAction(         title: "Ok",
                                            style: .default,
                                            handler: { action in })
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            controller.dismiss(animated: true)
            return
        }

        switch result {
        case .cancelled:
            print("Cancelled")
        case .failed:
            print("Failed to send")
        case .saved:
            print("Saved")
        case .sent:
            print("E-mail sent")
        @unknown default:
            print("We have some poroblems with e-mail sending")
        }

        controller.dismiss(animated: true)
    }
}
