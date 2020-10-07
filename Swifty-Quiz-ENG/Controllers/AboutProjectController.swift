
//  Created by Евгений Никитин on 15.07.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit

class AboutProjectController: UIViewController {

	@IBOutlet weak var backButton: UIButton!
	@IBOutlet var allButtons: [UIButton]!
	
	private var shadows = ShadowsHelper()
	private var adaptiveInterface = AdaptiveInterface()

	@IBOutlet weak var mainTextLabel: UILabel!
	@IBOutlet weak var stackAfterTextHeight: NSLayoutConstraint!
	@IBOutlet weak var firstRowButtonsHeight: NSLayoutConstraint!
	@IBOutlet weak var secondRowButtonsHeight: NSLayoutConstraint!
	@IBOutlet weak var logoHeight: NSLayoutConstraint!

	override func viewDidLoad() {
		super.viewDidLoad()
		
		mainTextLabel.text = "Hello, and nice to see you here! My name is Evgeniy, and I am an independent iOS-developer from Siberia. Swifty is my first app, which I've created to spread knowledge and help other developers and enthusiasts learn Swift. You can test it out with 150 questions available for free, and then unlock full access with over \(RandomSetManager.showAllQuestionsNumber()) questions (this number will grow) if you want to dive deeper into learning Swift. I have to tell you that it was hard to build this app, but it's finally done, so please enjoy it and send your feedback (it's important for improvement). I have also received some big help from great people along the way, you can see them below."
		
		adaptiveInterface.setAboutAppPage(view: view,
										  mainTextLabel: mainTextLabel,
										  stackAfterTextMargin: stackAfterTextHeight,
										  firstRowButtonsHeight: firstRowButtonsHeight,
										  secondRowButtonsHeight: secondRowButtonsHeight,
										  logoHeight: logoHeight)
		shadows.addBlackButtonShadows(allButtons)
	}
	
	/// > 13.0 iOS Navigation settings
	override func viewWillAppear(_ animated: Bool) {
		if #available(iOS 13.0, *) {
			backButton.isHidden = true
		}
	}
	/// < 13.0 iOS Navigation
	@IBAction func dismissAbout(_ sender: Any) {
		SoundPlayer.shared.playSound(sound: .menuMainButton)
		dismiss(animated: true, completion: nil)
	}
	
	
	// MARK: Links
	
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
	@IBAction func Wiki(_ sender: Any) {
		let urlComponents = URLComponents(string: "https://en.wikipedia.org/")!
		UIApplication.shared.open(urlComponents.url!)
		SoundPlayer.shared.playSound(sound: .menuMainButton)
	}
    @IBAction func swiftOrg(_ sender: Any) {
        let urlComponents = URLComponents(string: "https://swift.org/")!
        UIApplication.shared.open(urlComponents.url!)
		SoundPlayer.shared.playSound(sound: .menuMainButton)
    }
}
