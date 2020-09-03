
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

	static var purchased = false
	private var adaptiveInterface = AdaptiveInterface()

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
		adaptiveInterface.setUnlockPageInterface(view: view,
												 IapSupportLabel: IapSupportLabel,
												 IapMainTextLabel: IapMainTextLabel,
												 IapGoodLuckLabel: IapGoodLuckLabel,
												 getYourFullAccessHeight: getYourFullAccessHeight,
												 topMargin: topMargin,
												 textTopMargin: textTopMargin,
												 labelsTrailingSpace: labelsTrailingSpace,
												 labelsLeadingSpace: labelsLeadingSpace)
	}
}
