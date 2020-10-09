
//  Created by Евгений Никитин on 09.08.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit

protocol GameHistoryCellDelegate: class {
	func showHint(index: Int)
}

class GameHistoryCell: UITableViewCell {

	@IBOutlet weak var showHintButton: RoundCornerButton!
	@IBOutlet weak var questionImage: UIImageView!
    @IBOutlet weak var colorBack: UIView!
    @IBOutlet weak var questionNumber: UILabel!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var userAnswer: UILabel!
    @IBOutlet weak var correctAnswer: UILabel!
    @IBOutlet weak var separatorHeight: NSLayoutConstraint!
    @IBOutlet weak var imageHeight: NSLayoutConstraint!
    @IBOutlet weak var stackTopMargin: NSLayoutConstraint!

	weak var delegate: GameHistoryCellDelegate?
	var history: [GameHistory] = []
	var tableView = UITableView()
	var width: CGFloat = 350
	
	var currentIndex: Int = 0 {
		didSet {
			/// Настройка изображений
			if history[currentIndex].image == "" {
				imageHeight.constant = 0
				stackTopMargin.constant = 6
			} else {
				if let image = UIImage(named: "\(history[currentIndex].image)") {
					questionImage.image = UIImage(named: "\(history[currentIndex].image)")
					let ratio = image.size.width / image.size.height
					let newHeight = width / (ratio + 0.1)
					imageHeight.constant = newHeight - 55
					stackTopMargin.constant = 20
				}
			}
		
			questionNumber.text = "\(currentIndex + 1)"
			questionText.text = history[currentIndex].question
			correctAnswer.text = "Answer: \(history[currentIndex].correctAnswer)"
			userAnswer.text = "Your answer: \(history[currentIndex].userAnswer)"
			
			/// Цвет: Правильный или неправильный ответ
			if history[currentIndex].correctAnswer == history[currentIndex].userAnswer {
				colorBack.backgroundColor = #colorLiteral(red: 0.1451225281, green: 0.7943774462, blue: 0.4165494442, alpha: 1)
				questionNumber.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
				showHintButton.backgroundColor = #colorLiteral(red: 0.1451225281, green: 0.7943774462, blue: 0.4165494442, alpha: 0.7)
				showHintButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
			} else if history[currentIndex].userAnswer != "Hint" {
				colorBack.backgroundColor = #colorLiteral(red: 0.9865071177, green: 0.3565812409, blue: 0.2555966675, alpha: 1)
				userAnswer.text = "Your answer: \(history[currentIndex].userAnswer)"
				questionNumber.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
				showHintButton.backgroundColor = #colorLiteral(red: 0.9865071177, green: 0.3565812409, blue: 0.2555966675, alpha: 0.7)
				showHintButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
			} else {
				colorBack.backgroundColor = #colorLiteral(red: 0.8938786387, green: 0.8978905678, blue: 0.9102204442, alpha: 1)
				questionNumber.textColor = #colorLiteral(red: 0.2377000451, green: 0.2814793885, blue: 0.335570693, alpha: 1)
				userAnswer.text = "Your answer: Took a hint"
				showHintButton.backgroundColor = #colorLiteral(red: 0.8938786387, green: 0.8978905678, blue: 0.9102204442, alpha: 0.7)
				showHintButton.setTitleColor(#colorLiteral(red: 0.2377000451, green: 0.2814793885, blue: 0.335570693, alpha: 1), for: .normal)
			}
		}
	}
	
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        separatorHeight.constant = 1.0 / UIScreen.main.scale
    }

	@IBAction func showHintTapped(_ sender: Any) {
		delegate?.showHint(index: currentIndex)
		SoundPlayer.shared.playSound(sound: .menuMainButton)
	}
}
