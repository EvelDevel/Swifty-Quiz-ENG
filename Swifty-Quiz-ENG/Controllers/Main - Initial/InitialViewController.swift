
//  Created by Евгений Никитин on 09.04.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit

// MARK: TODO - Баги и доработки с Apple Store отзывов 

class InitialViewController: UIViewController {

	@IBOutlet weak var logoHeight: NSLayoutConstraint!
	@IBOutlet weak var logoWidth: NSLayoutConstraint!
	@IBOutlet weak var logoVerticalPosition: NSLayoutConstraint!
	@IBOutlet weak var aboutButtonHeight: NSLayoutConstraint!
	@IBOutlet weak var aboutButtonWidth: NSLayoutConstraint!
	@IBOutlet weak var aboutButtonVerticalPosition: NSLayoutConstraint!
	@IBOutlet weak var contentCenter: NSLayoutConstraint!

	@IBOutlet weak var totalQuestionsLabel: UILabel!
	@IBOutlet weak var selectedTopic: UILabel!
	@IBOutlet weak var lastTopic: UILabel!
	@IBOutlet weak var lastScore: UILabel!
	@IBOutlet weak var totalQuestions: UILabel!
	@IBOutlet weak var continueGameButton: UIButton!
	@IBOutlet weak var topicPicker: UIButton!
	@IBOutlet weak var logoButton: UIButton!

	@IBOutlet var initialWhiteViews: [UIView]!
	@IBOutlet var initialButtons: [UIButton]!

	@IBAction func goToAbout(_ sender: Any) { SoundPlayer.shared.playSound(sound: .menuMainButton) }
	@IBAction func tapButtonSounds(_ sender: Any) { SoundPlayer.shared.playSound(sound: .menuMainButton) }

	private let currentAppVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? ""
	private let shadows = ShadowsHelper()
	private let recordCaretaker = RecordsCaretaker()

	/// Проверка покупки
	let purchased = InAppPurchaseViewController.purchased

	override func viewDidLoad() {
		super.viewDidLoad()
		setUpInitialInformation()
		setUpUserInterface()
	}
}


// MARK: Start Information
extension InitialViewController {

	func setUpInitialInformation() {
		setUpStartQuestionSet()
		setUpLastGameInfo()
		showTotalQuestions()
	}

	/// Загружаем дефолтный сет
	func setUpStartQuestionSet() {
		if SelectedTopic.shared.topic.questionSet.isEmpty
			|| Game.shared.settings.appLastVersion != currentAppVersion {

			var newSet: [Question] = []

			if purchased {
				newSet = TopicOperator.getQuestionsTheBasics()
			} else {
				newSet = TopicOperator.getQuestionsDemoTheBasics()
			}

			SelectedTopic.shared.saveQuestionSet(newSet, topic: "The Basics", tag: 10)
			selectedTopic.text = "The Basics"
			Game.shared.changeContinueStatus()

		} else {
			selectedTopic.text = "\(SelectedTopic.shared.topic.topicName)"
		}
	}

	/// Устанавливаем информацию о последней игре
	func setUpLastGameInfo() {
		let records: [Record] = recordCaretaker.getRecordsList()
		if records.count != 0 {
			let category = records.first?.topic ?? ""
			let played = records.first?.playedNum ?? 0
			let total = records.first?.totalQuestion ?? 0
			let help = records.first?.helpCounter ?? 0
			let correct = records.first?.score ?? 0
			let roundedPercents = String(format: "%.1f", records.first?.percentOfCorrectAnswer ?? 0)
			lastTopic.text = "Category: \(category)"
			totalQuestions.text = "Questions: \(played) out of \(total) (hints: \(help))"
			lastScore.text = "Correct answers: \(correct) (\(roundedPercents)%)"
		}
	}

	/// Показываем общее количество вопросов в игре
	func showTotalQuestions() {
		if purchased {
			_ = RandomSuperSets.getQuestions(limit: 0)
		} else {
			_ = RandomSuperSets.getDemoQuestions(limit: 0)
		}
		totalQuestionsLabel.text = "Questions in game: \(RandomSuperSets.showTotalquestionsNumber())"
	}
}


// MARK: User Interface
extension InitialViewController {

	func setUpUserInterface() {
		updateContinueButton()
		addShadows()
		imageTuning(button: topicPicker, position: .center)
		imageTuning(button: logoButton, position: .center)
		setUpCorrectLogoPosition()
	}

	/// Показываем или скрываем кнопку "продолжить"
	func updateContinueButton() {
		if Game.shared.records.count != 0 && Game.shared.records[0].continueGameStatus == true {
			UIView.animate(withDuration: 0.12, animations: {
				if self.continueGameButton.isHidden == true { SoundPlayer.shared.playSound(sound: .showContinueButton) }
				self.contentCenter.constant = (UIScreen.main.scale / 2) + 22.5
				self.continueGameButton.isHidden = false })
		} else {
			if self.continueGameButton.isHidden == false { SoundPlayer.shared.playSound(sound: .hideContinueButton) }
			self.contentCenter.constant = (UIScreen.main.scale / 2) - 10.5
			self.continueGameButton.isHidden = true
		}
	}

	/// Добавляем тени на элементы
	func addShadows() {
		shadows.addStaticShadows(initialWhiteViews)
		shadows.addButtonShadows(initialButtons)
	}

	/// Корректного отображение дополнительных картинок у кнопок
	func imageTuning(button: UIButton, position: UIControl.ContentVerticalAlignment) {
		button.imageView!.contentMode = .scaleAspectFit
		button.contentVerticalAlignment = position
		button.contentHorizontalAlignment = .right
	}

	/// Настройка адекватного расположения логотипа
	/// В зависимости от размера экрана
	func setUpCorrectLogoPosition() {
		if view.frame.size.width <= 320 {
			/// SE-1
			logoVerticalPosition.constant = 40
			logoWidth.constant = 180
			logoHeight.constant = 55
			aboutButtonHeight.constant = 95
			aboutButtonWidth.constant = 210
			aboutButtonVerticalPosition.constant = 20
		} else if view.frame.size.width <= 410 {
			/// 8, SE-2
			logoVerticalPosition.constant = 55
			logoWidth.constant = 200
			logoHeight.constant = 80
			aboutButtonHeight.constant = 105
			aboutButtonWidth.constant = 240
			aboutButtonVerticalPosition.constant = 55
		} else if view.frame.size.width > 410 && view.frame.size.width < 500 {
			/// 8+, 11, 7+, 11 Pro Max
			logoVerticalPosition.constant = 90
			logoWidth.constant = 220
			logoHeight.constant = 100
			aboutButtonHeight.constant = 120
			aboutButtonWidth.constant = 260
			aboutButtonVerticalPosition.constant = 75
		} else {
			/// ipads
			logoVerticalPosition.constant = 100
			logoWidth.constant = 400
			logoHeight.constant = 180
			aboutButtonHeight.constant = 200
			aboutButtonWidth.constant = 440
			aboutButtonVerticalPosition.constant = 85
		}
	}
}


// MARK: Активация делегирования
extension InitialViewController {

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier  == "toGameViewController" {
			let gameView = segue.destination as! GameViewController
			gameView.delegate = self
			gameView.weContinueLastGame = false
		} else if segue.identifier == "toTopicSelection" {
			let topicView = segue.destination as! TopicViewController
			topicView.delegate = self
		} else if segue.identifier == "continueGame" {
			let gameView = segue.destination as! GameViewController
			gameView.delegate = self
			gameView.weContinueLastGame = true
		} else if segue.identifier == "toResultsViewController" {
			let recordView = segue.destination as! RecordsViewController
			recordView.delegate = self
		} else if segue.identifier == "toSettingsViewController" {
			let settingView = segue.destination as! SettingsViewController
			settingView.delegate = self
		}
	}
}


// MARK: Выполнение функций делегата
extension InitialViewController: 	GameViewControllerDelegate,
									TopicViewControllerDelegate,
									RecordsViewControllerDelegate,
									SettingsViewControllerDelegate {

	func didEndGame(result: Int, totalQuestion: Int, percentOfCorrect: Double,
					topic: String, helpCounter: Int, playedNum: Int) {
		lastTopic.text = "Category: \(topic)"
		totalQuestions.text = "Questions: \(playedNum) out of \(totalQuestion) (hints: \(helpCounter))"
		lastScore.text = "Correct answers: \(result) (\(percentOfCorrect)%)"
	}

	func updateInitialView() { updateContinueButton() }

	func selectedCategory() { selectedTopic.text = "\(SelectedTopic.shared.topic.topicName)" }
}
