
//  Created by Евгений Никитин on 11.04.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: Модель рекорда игры
struct Record: Codable {
    
    var date: Date?
    var score: Int?
    var topic: String?
    var totalQuestion: Int?
    var percentOfCorrectAnswer: Double?
    var helpCounter: Int?
    var playedNum: Int?
    var continueGameStatus: Bool?
    var gameHistory: [GameHistory]?
    var helpFlag: Bool?
}
