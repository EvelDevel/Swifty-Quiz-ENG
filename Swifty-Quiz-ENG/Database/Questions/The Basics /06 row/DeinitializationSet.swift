
//  Created by Евгений Никитин on 12.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 15 - Вопросы (id) с 1401 по 1500

class DeinitializationSet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: ["You write deinitializers with that keyword",
								"The keyword used for deinitialization"],
					 image: "",
					 optionA: "deinit",
					 optionB: "init",
					 optionC: "deinitialization",
					 optionD: "",
					 questionId: 1402,
					 helpText: "A deinitializer is called immediately before a class instance is deallocated. You write deinitializers with the deinit keyword, similar to how initializers are written with the init keyword. Deinitializers are only available on class types."),

			Question(question: ["Which of the following options can make use of deinitializers?",
								"Deinitializers are only available for these types"],
					 image: "",
					 optionA: "Class types",
					 optionB: "Structure types",
					 optionC: "Enumeration types",
					 optionD: "All types",
					 questionId: 1403,
					 helpText: "Deinitializers are only available on class types."),

			Question(question: ["Pick the correct maximum number of deinitializers available for a class definition",
								"How many deinitializers can a class definition have?"],
					 image: "",
					 optionA: "One",
					 optionB: "Two",
					 optionC: "Three",
					 optionD: "As many as needed",
					 questionId: 1404,
					 helpText: "Class definitions can have at most one deinitializer per class."),

			Question(question: ["Do deinitializers require parentheses?",
								"Deinitializer can take parameters. Is that true?",
								"We write deinitializers with parentheses. Is that correct?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 1405,
					 helpText: "Deinitializers don’t take any parameters and are written without parentheses."),

			Question(question: ["Deinitializers are called automatically, right after the instance deallocation takes place. Is that true?",
								"Is it required to call deinitializers manually?",
								"Deinitializers are called manually, right after instance deallocation takes place. Is that true?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 1406,
					 helpText: "Deinitializers are called automatically, just before instance deallocation takes place."),

			Question(question: ["Are you allowed to call a deinitializer by yourself?",
								"You can call a deinitializer yourself. Is that true?"],
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

			Question(question: ["Can deinitializers access the properties of an instance?",
								"Can deinitializers modify its own behavior based on properties of an instance?",
								"A deinitializer can access all the properties of an instance. Is that correct?"],
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
