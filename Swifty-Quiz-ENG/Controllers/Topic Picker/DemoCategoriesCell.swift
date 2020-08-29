
//  Created by Евгений Никитин on 29.08.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit

class DemoCategoriesCell: UITableViewCell {

	@IBOutlet var allButtons: [UIButton]!
	@IBOutlet weak var unlockAllCategories: RoundCornerButton!

	@IBAction func unlockAction(_ sender: Any) {
		SoundPlayer.shared.playSound(sound: .menuMainButton)
	}

    override func awakeFromNib() {
        super.awakeFromNib()
		unlockAllCategories.setTitle("Unlock other \(RandomSuperSets.showTotalquestionsNumber()-100) questions", for: .normal)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
