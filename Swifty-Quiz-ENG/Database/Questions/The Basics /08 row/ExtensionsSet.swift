
//  Created by Евгений Никитин on 12.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 21 - Вопросы (id) с 2001 по 2100

class ExtensionsSet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: ["Can we add new functionality to an existing class for which you don't have access to the source code?",
								"If we don't have access to the source code of the class, can we add new functionality to it with extension?",
								"You can add new functionality to an existing class even if you do not have access to the original source code. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2002,
					 helpText: "Extensions add new functionality to an existing class, structure, enumeration, or protocol type. This includes the ability to extend types for which you do not have access to the original source code (known as retroactive modeling). Extensions are similar to categories in Objective-C. (Unlike Objective-C categories, Swift extensions do not have names.)"),

			Question(question: ["What is the name of the process of extending classes whose original source code is not available?"],
					 image: "",
					 optionA: "Retroactive modeling",
					 optionB: "Active modeling",
					 optionC: "Reactive modeling",
					 optionD: "",
					 questionId: 2003,
					 helpText: "The ability to extend types for which you do not have access to the original source code (known as retroactive modeling)."),

			Question(question: ["Can extensions add computed instance properties and computed type properties?",
								"Can extensions define instance methods and type methods?",
								"Can extensions provide new initializers?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2004,
					 helpText: "Extensions in Swift can: Add computed instance properties and computed type properties; Define instance methods and type methods; Provide new initializers."),

			Question(question: ["Can extensions define subscripts?",
								"Can extensions define and use new nested types?",
								"Can extensions make an existing type conform to a protocol?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2005,
					 helpText: "Extensions in Swift can: Define subscripts; Define and use new nested types; Make an existing type conform to a protocol."),

			Question(question: ["Can you extend a protocol?",
								"In Swift you can extend a protocol. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2006,
					 helpText: "In Swift, you can even extend a protocol to provide implementations of its requirements or add additional functionality that conforming types can take advantage of."),

			Question(question: ["In extensions you can override existing functionality. Is that true?",
								"Can you override existing functionality in extensoins?",
								"Extensions cannot add new functionality to a type, but they can override existing functionality. Is that true?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "Only if the class is final",
					 optionD: "",
					 questionId: 2007,
					 helpText: "Extensions can add new functionality to a type, but they cannot override existing functionality."),

			Question(question: ["Which keyword declare the extension?",
								"With this keyword you can declare an extension",
								"What is the keyword for declaring an extension in Swift?"],
					 image: "",
					 optionA: "extension",
					 optionB: "class",
					 optionC: "struct",
					 optionD: "protocol",
					 questionId: 2008,
					 helpText: "You can declare extensions with the extension keyword."),

			Question(question: ["If you define an extension, will the new functionality be available on all existing instances of that type?",
								"Will the new functionality from extension be available on all existing instances of that type?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2009,
					 helpText: "If you define an extension to add new functionality to an existing type, the new functionality will be available on all existing instances of that type, even if they were created before the extension was defined."),

			Question(question: ["Can an extensions add computed instance properties and computed type properties to existing types?",
								"Can an extensions add computed instance properties to existing types?",
								"Can an extensions add computed type properties to existing types?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2010,
					 helpText: "Yes. Extensions can add computed instance properties and computed type properties to existing types."),

			Question(question: ["What we'll get in the console?",
								"What value will we get in console?"],
					 image: "Extensions11",
					 optionA: "0.25",
					 optionB: "25",
					 optionC: "250",
					 optionD: "0.025",
					 questionId: 2011,
					 helpText: "Correct answer: 0.25. Extensions can add computed instance properties and computed type properties to existing types. Our example adds five computed instance properties to Swift’s built-in Double type, to provide basic support for working with distance units. In this example, a Double value of 1.0 is considered to represent “one meter”. This is why the m computed property returns self—the expression 1.m is considered to calculate a Double value of 1.0. Other units require some conversion to be expressed as a value measured in meters."),

			Question(question: ["Can extensions add new computed properties?",
								"Extensions cannot add new computed properties. Is that true?",
								"Extensions cannot add stored properties. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2012,
					 helpText: "Extensions can add new computed properties, but they cannot add stored properties, or add property observers to existing properties."),

			Question(question: ["Can extensions add new initializers to existing types?",
								"Extensions can add new initializers to existing types. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2013,
					 helpText: "Extensions can add new initializers to existing types. This enables you to extend other types to accept your own custom types as initializer parameters, or to provide additional initialization options that were not included as part of the type’s original implementation."),

			Question(question: ["Can extensions add new convenience initializers to a class?",
								"Extensions cannot add new designated initializers or deinitializers to a class. Is that true?",
								"Do designated initializers and deinitializers must always be provided by the original class implementation?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2014,
					 helpText: "Extensions can add new convenience initializers to a class, but they cannot add new designated initializers or deinitializers to a class. Designated initializers and deinitializers must always be provided by the original class implementation."),

			Question(question: ["If you add an initializer to a structure that was declared in another module, can the new initializer access self until it calls an initializer from the defining module?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2015,
					 helpText: "If you use an extension to add an initializer to a structure that was declared in another module, the new initializer can’t access self until it calls an initializer from the defining module."),

			Question(question: ["What will we get in the console?"],
					 image: "Extensions16",
					 optionA: "Hello! and Hello!",
					 optionB: "Hello!",
					 optionC: "Nothing",
					 optionD: "We will get an error",
					 questionId: 2016,
					 helpText: "Correct answer: Hello! and Hello!. Extensions can add new instance methods and type methods to existing types. The following example adds a new instance method called repetitions to the Int type. The repetitions(task:) method takes a single argument of type () -> Void, which indicates a function that has no parameters and does not return a value. After defining this extension, you can call the repetitions(task:) method on any integer to perform a task that many number of times."),

			Question(question: ["Can the instance methods added with an extension also modify (or mutate) the instance itself?",
								"Instance methods added with an extension can also modify (or mutate) the instance itself. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2017,
					 helpText: "Yes. Instance methods added with an extension can also modify (or mutate) the instance itself."),

			Question(question: ["Structure and enumeration methods that modify self or its properties must mark the instance method as ___",
								"Enumeration methods that modify its properties must mark the instance method with ___ keyword"],
					 image: "",
					 optionA: "mutating",
					 optionB: "private",
					 optionC: "static",
					 optionD: "public",
					 questionId: 2018,
					 helpText: "Structure and enumeration methods that modify self or its properties must mark the instance method as mutating, just like mutating methods from an original implementation."),

			Question(question: ["What value will we get in the console??",
								"What will be someInt value after executing this code?"],
					 image: "Extensions19",
					 optionA: "9",
					 optionB: "3",
					 optionC: "6",
					 optionD: "We will get an error",
					 questionId: 2019,
					 helpText: "Correct answer: 9. Our example adds a new mutating method called square to Swift’s Int type, which squares the original value."),

			Question(question: ["Can extensions add new nested types to existing classes?",
								"Can extensions add new nested types to existing structures?",
								"Can extensions add new nested types to existing enumerations?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2020,
					 helpText: "Yes. Extensions can add new nested types to existing classes, structures, and enumerations.")
		]
	}
}
