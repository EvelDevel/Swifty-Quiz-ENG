
//  Created by Евгений Никитин on 19.04.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit

protocol SettingsViewControllerDelegate: class {
    func updateInitialView()
}

class SettingsViewController: UIViewController {
    
	@IBOutlet weak var backButton: UIButton!
	@IBOutlet weak var titleHeight: NSLayoutConstraint!
	@IBOutlet weak var headerHeight: NSLayoutConstraint!
	@IBOutlet weak var tableView: UITableView!
    weak var delegate: SettingsViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cellRegistration()
    }
    
	/// Call delegates
    override func viewDidDisappear(_ animated: Bool) {
        delegate?.updateInitialView()
    }
	
	/// > 13.0 iOS Navigation settings
	override func viewWillAppear(_ animated: Bool) {
		if #available(iOS 13.0, *) {
			backButton.isHidden = true
			titleHeight.constant = 25
			headerHeight.constant = 60
		}
	}
	/// < 13.0 iOS Navigation
	@IBAction func dismissSettings(_ sender: Any) {
		SoundPlayer.shared.playSound(sound: .menuMainButton)
		dismiss(animated: true, completion: nil)
	}
    
    func showAlertIfNeeded() {
        /// Показываем алерт о том, что есть незавершенная игра, чтобы пользователь не сбросил ее
        /// Проверяем, что у нас есть незавершенная игра, проверяем, что алерт еще не был показан
        if Game.shared.records.count != 0 && Game.shared.records[0].continueGameStatus == true {
            if Game.shared.showSettingsAlertStatus() != true {
                let alert = UIAlertController(title: "You have an unfinished game", message: "If you change the settings, choose a different category, or answer at least one question in the new game, you will lose the opportunity to complete the unfinished game.", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "Continue", style: .default, handler: { action in })
                alert.addAction(okAction)
                present(alert, animated: true, completion: nil)
            }
            /// Выставляем что показали алерт, и больше не показываем до перезапуска приложения
            Game.shared.setThatWeShowedAlert()
        }
    }
}


// MARK: Настройка таблицы
extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func cellRegistration() {
        tableView.register(UINib(nibName: "SettingCell", bundle: nil), forCellReuseIdentifier: "SettingCell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as? SettingCell else { return UITableViewCell() }
        cell.delegate = self
        tableView.separatorColor = #colorLiteral(red: 0.9432304886, green: 0.9432304886, blue: 0.9432304886, alpha: 1)
        return cell
    }
}


// MARK: Работа с делегатом SettingCellDelegate
extension SettingsViewController: SettingCellDelegate {
    
    func showInformationAlert(_ title: String, _ message: String) {
        let alert = UIAlertController(title: "\(title)", message: "\(message)", preferredStyle: .alert)
        let quitAction = UIAlertAction(title: "Back to settengs", style: .default, handler: { action in })
        alert.addAction(quitAction)
        present(alert, animated: true, completion: nil)
    }
    
    func showAlert() {
        self.showAlertIfNeeded()
    }
}
