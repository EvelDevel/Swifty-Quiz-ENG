
//  Created by Евгений Никитин on 29.08.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit

protocol DemoCategoriesCellDelegate: class {
	func updateNumberOfQuestions()
	func showAlert()
}

class DemoCategoriesCell: UITableViewCell {

	@IBOutlet var allButtons: [RoundCornerButton]!
	@IBOutlet var randoms: [RoundCornerButton]!
	@IBOutlet var guides: [RoundCornerButton]!

	weak var delegate: DemoCategoriesCellDelegate?
	private let shadows = ShadowsHelper()
	private var lastPosition = SelectedTopic.shared.topic.topicTag

	override func awakeFromNib() {
		super.awakeFromNib()
		addDemoQuestionsToArray(sender: UIButton())
		setFontSize()
		addShadows()
	}

	override func setSelected(_ selected: Bool, animated: Bool) {
		super.setSelected(selected, animated: animated)
	}

	@IBAction func topicButtonPressed(_ sender: UIButton) {
		/// Срабатывание только в случае,
		/// Когда нажимаем на новую кнопку а не активную
		if sender.tag - 1 != self.lastPosition {
			updateTopicButtons()
			addDemoQuestionsToArray(sender: sender)
			delegate?.updateNumberOfQuestions()
			Game.shared.changeContinueStatus()
			sender.backgroundColor = #colorLiteral(red: 0.3792441487, green: 0.7556995749, blue: 0.873203218, alpha: 1)
			sender.setTitleColor(#colorLiteral(red: 0.9566296935, green: 0.9607134461, blue: 0.9688788056, alpha: 1), for: .normal)
			SoundPlayer.shared.playSound(sound: .topicAndSettingsButton)
			lastPosition = sender.tag - 1
		}
	}

	override func layoutSubviews() {
		delegate?.showAlert()
	}

	func setFontSize() {
		allButtons.forEach() { button in
			if UIScreen.main.bounds.size.width > 320 { button.titleLabel?.font = .systemFont(ofSize: 12)
			} else { button.titleLabel?.font = .systemFont(ofSize: 10) }
		}
	}

	func addShadows() {
		DispatchQueue.main.async {
			self.shadows.addTopicButtonShadows(self.allButtons)
		}
	}

	func updateTopicButtons() {
		allButtons.forEach() { button in
			button.setTitleColor(#colorLiteral(red: 0.2377000451, green: 0.2814793885, blue: 0.335570693, alpha: 1), for: .normal)
			button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
		}
	}
}


// MARK: Выбор категории
extension DemoCategoriesCell {

	/// Загружаем пачку вопросов в наш синглтон массив по нажатию на тему
	func addDemoQuestionsToArray(sender: UIButton) {
		var newQuestionSet: [Question] = SelectedTopic.shared.topic.questionSet
		let position = SelectedTopic.shared.topic.topicTag

		switch sender.tag {

		case 1:
			newQuestionSet = TopicOperator.getRandom20()
			SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "20 random questions", tag: 0)
		case 2:
			newQuestionSet = TopicOperator.getRandom50()
			SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "50 random questions", tag: 1)

			// MARK: THE BASICS

		// MARK: 01 row
		case 11:
			newQuestionSet = TopicOperator.getQuestionsTheBasics()
			SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "The Basics", tag: 10)
		case 12:
			newQuestionSet = TopicOperator.getQuestionsBasicOperators()
			SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Basic Operators", tag: 11)
		case 13:
			newQuestionSet = TopicOperator.getQuestionsStringAndCharacters()
			SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Strings and Characters", tag: 12)

		// MARK: 02 row
		case 14:
			newQuestionSet = TopicOperator.getQuestionsCollectionTypes()
			SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Collection Types", tag: 13)
		case 15:
			newQuestionSet = TopicOperator.getQuestionsControlFlow()
			SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Control Flow", tag: 14)

		default:
			switch position {
			case 0...9:
				randoms[position].backgroundColor = #colorLiteral(red: 0.3792441487, green: 0.7556995749, blue: 0.873203218, alpha: 1)
				randoms[position].setTitleColor(#colorLiteral(red: 0.9566296935, green: 0.9607134461, blue: 0.9688788056, alpha: 1), for: .normal)
			case 10...35:
				guides[position-10].backgroundColor = #colorLiteral(red: 0.3792441487, green: 0.7556995749, blue: 0.873203218, alpha: 1)
				guides[position-10].setTitleColor(#colorLiteral(red: 0.9566296935, green: 0.9607134461, blue: 0.9688788056, alpha: 1), for: .normal)
			default:
				print("default case in addQuestionsToArray() in CategoriesCell")
			}
		}
	}
}
