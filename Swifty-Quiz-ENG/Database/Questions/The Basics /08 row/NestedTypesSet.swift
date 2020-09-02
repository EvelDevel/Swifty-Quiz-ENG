
//  Created by Евгений Никитин on 12.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 20 - Вопросы (id) с 1901 по 2000

class NestedTypesSet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: ["Where do you need to write your type definition to nest one type within another?"],
					 image: "",
					 optionA: "Within the outer braces",
					 optionB: "Inside ()",
					 optionC: "Before {}",
					 optionD: "After ()",
					 questionId: 1901,
					 helpText: "To nest a type within another type, write its definition within the outer braces of the type it supports."),
			
			Question(question: ["How many levels can types be nested?",
								"Types can be nested to this many levels"],
					 image: "",
					 optionA: "As many as required",
					 optionB: "Two levels",
					 optionC: "One level",
					 optionD: "Three levels",
					 questionId: 1902,
					 helpText: "Types can be nested to as many levels as are required."),
			
			Question(question: ["Can we use a nested type outside of its definition context?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1903,
					 helpText: "To use a nested type outside of its definition context, prefix its name with the name of the type it is nested within.")
		]
	}
}
