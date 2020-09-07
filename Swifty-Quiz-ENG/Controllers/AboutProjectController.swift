
//  Created by Евгений Никитин on 15.07.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit

class AboutProjectController: UIViewController {

	@IBOutlet var allButtons: [UIButton]!
	private var shadows = ShadowsHelper()
	private var adaptiveInterface = AdaptiveInterface()

	@IBOutlet weak var mainTextLabel: UILabel!
	@IBOutlet weak var textAfterLogoHeight: NSLayoutConstraint!
	@IBOutlet weak var stackAfterTextHeight: NSLayoutConstraint!
	@IBOutlet weak var firstRowButtonsHeight: NSLayoutConstraint!
	@IBOutlet weak var secondRowButtonsHeight: NSLayoutConstraint!
	@IBOutlet weak var logoHeight: NSLayoutConstraint!

    @IBAction func author(_ sender: Any) {
        let urlComponents = URLComponents(string: "https://vk.com/ev.nikitin")!
        UIApplication.shared.open(urlComponents.url!)
		SoundPlayer.shared.playSound(sound: .menuMainButton)
    }
    @IBAction func design(_ sender: Any) {
        let urlComponents = URLComponents(string: "https://vk.com/shlehanov")!
        UIApplication.shared.open(urlComponents.url!)
		SoundPlayer.shared.playSound(sound: .menuMainButton)
    }
    @IBAction func corrector(_ sender: Any) {
        let urlComponents = URLComponents(string: "https://vk.com/id237197643")!
        UIApplication.shared.open(urlComponents.url!)
		SoundPlayer.shared.playSound(sound: .menuMainButton)
    }
    @IBAction func refactorGuru(_ sender: Any) {
        let urlComponents = URLComponents(string: "https://refactoring.guru/ru")!
        UIApplication.shared.open(urlComponents.url!)
		SoundPlayer.shared.playSound(sound: .menuMainButton)
    }
    @IBAction func swiftOrg(_ sender: Any) {
        let urlComponents = URLComponents(string: "https://swift.org/")!
        UIApplication.shared.open(urlComponents.url!)
		SoundPlayer.shared.playSound(sound: .menuMainButton)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
		adaptiveInterface.setAboutAppPage(view: view,
										  mainTextLabel: mainTextLabel,
										  textAfterLogoHeight: textAfterLogoHeight,
										  stackAfterTextMargin: stackAfterTextHeight,
										  firstRowButtonsHeight: firstRowButtonsHeight,
										  secondRowButtonsHeight: secondRowButtonsHeight,
										  logoHeight: logoHeight)
		shadows.addBlackButtonShadows(allButtons)
    }
}
