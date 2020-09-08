
//  Created by Евгений Никитин on 03.09.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit

class AdaptiveInterface {

	/// Адаптация логотипа  на главном контроллере под разные размеры экрана
	func setLogoFromInitialView(view: UIView,
								logoVerticalPosition: NSLayoutConstraint,
								logoWidth: NSLayoutConstraint,
								logoHeight: NSLayoutConstraint,
								aboutButtonHeight: NSLayoutConstraint,
								aboutButtonWidth: NSLayoutConstraint,
								aboutButtonVerticalPosition: NSLayoutConstraint) {

		if view.frame.size.width <= 320 {
			/// SE-1
			logoVerticalPosition.constant = 40
			logoWidth.constant = 180
			logoHeight.constant = 55
			aboutButtonHeight.constant = 95
			aboutButtonWidth.constant = 210
			aboutButtonVerticalPosition.constant = 20

		} else if view.frame.size.width <= 410 {
			/// 8, SE-2, X
			logoVerticalPosition.constant = 65
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

	/// Адаптация экрана "О проекте"
	func setAboutAppPage(view: UIView,
						 mainTextLabel: UILabel,
						 textAfterLogoHeight: NSLayoutConstraint,
						 stackAfterTextMargin: NSLayoutConstraint,
						 firstRowButtonsHeight: NSLayoutConstraint,
						 secondRowButtonsHeight: NSLayoutConstraint,
						 logoHeight: NSLayoutConstraint) {

		if view.frame.size.width <= 320 {
			/// SE-1
			/// Здесь все ок

		} else if view.frame.size.width <= 410 {
			/// 8, SE-2
			mainTextLabel.font = UIFont.systemFont(ofSize: 16.0, weight: .light)
			firstRowButtonsHeight.constant = 35
			secondRowButtonsHeight.constant = 35
			logoHeight.constant = 170

		} else if view.frame.size.width > 410 && view.frame.size.width < 500 {
			/// 8+, 11, 7+, 11 Pro Max
			logoHeight.constant = 200
			mainTextLabel.font = UIFont.systemFont(ofSize: 18.0, weight: .light)
			firstRowButtonsHeight.constant = 40
			secondRowButtonsHeight.constant = 40
			stackAfterTextMargin.constant = 40

		} else {
			/// ipads
		}
	}

	/// Адаптация экрана "Покупки"
	func setUnlockPageInterface(view: UIView,
							  IapSupportLabel: UILabel,
							  IapMainTextLabel: UILabel,
							  getYourFullAccessHeight: NSLayoutConstraint,
							  topMargin: NSLayoutConstraint,
							  textTopMargin: NSLayoutConstraint,
							  labelsTrailingSpace: NSLayoutConstraint,
							  labelsLeadingSpace: NSLayoutConstraint) {

		if view.frame.size.width <= 320 {
			IapSupportLabel.font = UIFont.systemFont(ofSize: 13.0, weight: .regular)
			IapMainTextLabel.font = UIFont.systemFont(ofSize: 14.0, weight: .thin)
			getYourFullAccessHeight.constant = 150
			topMargin.constant = 20
			textTopMargin.constant = 5
			labelsTrailingSpace.constant = 20
			labelsLeadingSpace.constant = 20

		} else if view.frame.size.width <= 410 {
			IapSupportLabel.font = UIFont.systemFont(ofSize: 15.0, weight: .regular)
			IapMainTextLabel.font = UIFont.systemFont(ofSize: 18.0, weight: .thin)
			getYourFullAccessHeight.constant = 170
			topMargin.constant = 20
			textTopMargin.constant = 5
			labelsTrailingSpace.constant = 24
			labelsLeadingSpace.constant = 24

		} else {
			IapSupportLabel.font = UIFont.systemFont(ofSize: 18.0, weight: .regular)
			IapMainTextLabel.font = UIFont.systemFont(ofSize: 20, weight: .thin) 
			getYourFullAccessHeight.constant = 200
			topMargin.constant = 40
			textTopMargin.constant = 20
			labelsTrailingSpace.constant = 30
			labelsLeadingSpace.constant = 30
		}
	}
}
