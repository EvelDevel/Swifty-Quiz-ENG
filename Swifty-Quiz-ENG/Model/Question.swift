
//  Created by Евгений Никитин on 09.04.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: Модель вопроса игры
struct Question: Codable {
    
    let question: [String]
    let image: String

    /// Варианты ответа (4 варианта, вариативно может быть от 2 до 4)
    /// Правильный ответ всегда в optionA
    
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let questionId: Int
    let helpText: String    
}
