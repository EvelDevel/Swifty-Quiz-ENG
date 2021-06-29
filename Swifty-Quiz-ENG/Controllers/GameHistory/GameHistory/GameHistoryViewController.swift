
//  Created by Евгений Никитин on 09.08.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit
import MessageUI

class GameHistoryViewController: UIViewController {
    
	@IBOutlet weak var headerHeight: NSLayoutConstraint!
	@IBOutlet weak var titleTopMargin: NSLayoutConstraint!
	@IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
	var history: [GameHistory] = []
    var cellWidth: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cellRegistration()
    }
	
	/// > 13.0 iOS Navigation settings
	override func viewWillAppear(_ animated: Bool) {
		if #available(iOS 13.0, *) {
			backButton.isHidden = true
			titleTopMargin.constant = 25
			headerHeight.constant = 65
		}
	}
	/// < 13.0 iOS Navigation
	@IBAction func dismissGameHistory(_ sender: Any) {
		SoundPlayer.shared.playSound(sound: .menuMainButton)
		dismiss(animated: true, completion: nil)
	}
}


// MARK: Работа с таблицей
extension GameHistoryViewController: UITableViewDelegate, UITableViewDataSource {
    
    func cellRegistration() {
        tableView.register(UINib(nibName: "GameHistoryCell", bundle: nil), forCellReuseIdentifier: "GameHistoryCell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GameHistoryCell", for: indexPath) as? GameHistoryCell else {
            return UITableViewCell()
        }
		cell.delegate = self
		cell.history = history
		cell.tableView = tableView
		cell.width = tableView.frame.size.width
		cell.cellIndex = indexPath.row
        return cell
    }
    
    /// Обработка свайпа ячейки влево (для репорта)
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let reportAction = UIContextualAction(style: .normal, title: "Report a problem") { (action, view, completion) in
            self.reportButtonPressed(id: self.history[indexPath.row].questionId)
            completion(true)
        }
        reportAction.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2371389396, blue: 0.1065657165, alpha: 0.5)
        return UISwipeActionsConfiguration(actions: [reportAction])
    }
}


// MARK: Работа с делегатом
extension GameHistoryViewController: GameHistoryCellDelegate {
	func showHint(index: Int) {
		let mainStoryboard: UIStoryboard = UIStoryboard(name: "GamesHistory", bundle: nil)
		let historyHintView  = mainStoryboard.instantiateViewController(withIdentifier: "HistoryHintController") as! HistoryHintController
		historyHintView.helpText = history[index].helpText
		present(historyHintView, animated: true, completion: nil)
	}
}


// MARK: Работа c отправкой почты
extension GameHistoryViewController: MFMailComposeViewControllerDelegate {
    
    func reportButtonPressed(id: Int) {
        showMailComposer(id: id)
        SoundPlayer.shared.playSound(sound: .menuMainButton)
    }
    
    func showMailComposer(id: Int) {
        /// Проверяем, может ли девайс пользователя отправлять мэйлы
        guard MFMailComposeViewController.canSendMail() else {
            let alert = UIAlertController(  title: "You want to report an incorrect question",
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
        composer.setToRecipients(["hello@swifty-quiz.ru"])
        composer.setSubject("Question #\(id)")
        composer.setMessageBody("Found an error in question #\(id): ", isHTML: false)
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
