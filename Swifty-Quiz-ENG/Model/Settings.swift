
//  Created by Евгений Никитин on 25.04.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: Модель "настройки"
struct Settings: Codable {
    
    var questionOrder: Int
    var questionTextShuffeling: Int
    var sound: Int
    var changeAfterHelp: Int
    var helpAfterWrong: Int
    var appLastVersion: String
	var fullAccess: Bool
}
