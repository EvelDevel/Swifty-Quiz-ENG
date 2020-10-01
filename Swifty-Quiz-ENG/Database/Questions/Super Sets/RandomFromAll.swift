
//  Created by Евгений Никитин on 16.06.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

class RandomFromAll {
    
	/// Получаем 20 - 50 - 100 вопросов из всех возможных
	
	static func getQuestions(limit: Int) -> [Question] {
		
		var shuffled: [Question] = []
		var toReturn: [Question] = []
		
		if limit > 0 {
			shuffled = QuestionManager.getAllQuestions().shuffled()
			
			for index in 0..<limit {
				toReturn.append(shuffled[index])
			}
		}
		return toReturn
	}

	///
	static func getDemoQuestions(limit: Int) -> [Question] {

		var shuffled: [Question] = []
        var toReturn: [Question] = []
		
		if limit > 0 {
			shuffled = QuestionManager.appendDemo().shuffled()
			
			for index in 0..<limit {
				toReturn.append(shuffled[index])
			}
		}
        return toReturn
    }
}
