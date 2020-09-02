
//  Created by Евгений Никитин on 12.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 15 - Вопросы (id) с 1401 по 1500

class DeinitializationSet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: ["You write deinitializers with the that keyword",
								"Keyword for deinitialization"],
					 image: "",
					 optionA: "deinit",
					 optionB: "init",
					 optionC: "deinitialization",
					 optionD: "",
					 questionId: 1402,
					 helpText: "A deinitializer is called immediately before a class instance is deallocated. You write deinitializers with the deinit keyword, similar to how initializers are written with the init keyword. Deinitializers are only available on class types."),

			Question(question: ["For what types are deinitializers available for?",
								"Deinitializers are only available for these types"],
					 image: "",
					 optionA: "Class types",
					 optionB: "Structures types",
					 optionC: "Enumerations types",
					 optionD: "All types",
					 questionId: 1403,
					 helpText: "Deinitializers are only available on class types."),

			Question(question: ["Class definitions can have that many deinitializers per class",
								"How many deinitializers can have a class definitions?"],
					 image: "",
					 optionA: "One",
					 optionB: "Two",
					 optionC: "Three",
					 optionD: "As many as we needed",
					 questionId: 1404,
					 helpText: "Class definitions can have at most one deinitializer per class."),

			Question(question: ["Does deinitializer need the parentheses?",
								"The deinitializer can take parameters. Is that true?",
								"We write deinitializers with parentheses. Is that true?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 1405,
					 helpText: "The deinitializer does not take any parameters and is written without parentheses."),

			Question(question: ["Deinitializers are called automatically, right after the instance deallocation takes place. Is that true?",
								"We need to call deinitializers manually. Is that true?",
								"Deinitializers need to be called manually, right after instance deallocation takes place. Is that true?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 1406,
					 helpText: "Deinitializers are called automatically, just before instance deallocation takes place."),

			Question(question: ["Are you allowed to call a deinitializer by yourself?",
								"You are allowed to call a deinitializer yourself. Is that true?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 1407,
					 helpText: "You are not allowed to call a deinitializer yourself."),

			Question(question: ["Are superclass deinitializers inherited by their subclasses?",
								"Superclass deinitializers are inherited by their subclasses. Is that true?",
								"Are superclass deinitializers always called, even if a subclass does not provide its own deinitializer?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1408,
					 helpText: "Superclass deinitializers are inherited by their subclasses, and the superclass deinitializer is called automatically at the end of a subclass deinitializer implementation. Superclass deinitializers are always called, even if a subclass does not provide its own deinitializer."),

			Question(question: ["Can deinitializer access all properties of the instance?",
								"Can deinitializer modify its behavior based on properties of the instance?",
								"A deinitializer can access all properties of the instance. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1409,
					 helpText: "Because an instance is not deallocated until after its deinitializer is called, a deinitializer can access all properties of the instance it is called on and can modify its behavior based on those properties (such as looking up the name of a file that needs to be closed).")
		]
	}
}
