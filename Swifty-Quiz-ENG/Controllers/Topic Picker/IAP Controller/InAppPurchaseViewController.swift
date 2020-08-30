
//  Created by Евгений Никитин on 30.08.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit

class InAppPurchaseViewController: UIViewController {

	@IBOutlet weak var IapSupportLabel: UILabel!
	@IBOutlet weak var IapMainTextLabel: UILabel!
	@IBOutlet weak var IapGoodLuckLabel: UILabel!
	@IBOutlet weak var IapBuyButton: UIButton!
	@IBOutlet weak var IapRestoreButton: RoundCornerButton!

	@IBOutlet weak var getYourFullAccessHeight: NSLayoutConstraint!
	@IBOutlet weak var topMargin: NSLayoutConstraint!
	@IBOutlet weak var labelsTrailingSpace: NSLayoutConstraint!
	@IBOutlet weak var labelsLeadingSpace: NSLayoutConstraint!
	@IBOutlet weak var textTopMargin: NSLayoutConstraint!

	let shadow = ShadowsHelper()

	override func viewDidLoad() {
        super.viewDidLoad()
		setTheInterfaceRight()
		setTheBuyButton()
    }

	func setTheBuyButton() {
		shadow.addBlackButtonShadows([IapBuyButton, IapRestoreButton])
		IapBuyButton.setTitle("UNLOCK for 14.99$", for: .normal)
		IapRestoreButton.setTitle("Restore access", for: .normal)
	}

	func setTheInterfaceRight() {
		if view.frame.size.width <= 320 {
			IapSupportLabel.font = UIFont.systemFont(ofSize: 14.0, weight: .regular)
			IapMainTextLabel.font = UIFont.systemFont(ofSize: 15.0, weight: .thin)
			IapGoodLuckLabel.font = UIFont.systemFont(ofSize: 14.0, weight: .regular)
			getYourFullAccessHeight.constant = 170
			topMargin.constant = 20
			textTopMargin.constant = 5
			labelsTrailingSpace.constant = 20
			labelsLeadingSpace.constant = 20
		} else if view.frame.size.width <= 410 {
			IapSupportLabel.font = UIFont.systemFont(ofSize: 15.0, weight: .regular)
			IapMainTextLabel.font = UIFont.systemFont(ofSize: 18.0, weight: .thin)
			IapGoodLuckLabel.font = UIFont.systemFont(ofSize: 15.0, weight: .regular)
			getYourFullAccessHeight.constant = 240
			topMargin.constant = 20
			textTopMargin.constant = 5
			labelsTrailingSpace.constant = 24
			labelsLeadingSpace.constant = 24
		} else {
			IapSupportLabel.font = UIFont.systemFont(ofSize: 18.0, weight: .regular)
			IapMainTextLabel.font = UIFont.systemFont(ofSize: 20, weight: .thin)
			IapGoodLuckLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
			getYourFullAccessHeight.constant = 250
			topMargin.constant = 40
			textTopMargin.constant = 20
			labelsTrailingSpace.constant = 30
			labelsLeadingSpace.constant = 30
		}
	}
}
