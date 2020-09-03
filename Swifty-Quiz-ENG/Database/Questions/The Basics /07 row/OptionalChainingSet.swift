
//  Created by Евгений Никитин on 12.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 17 - Вопросы (id) с 1601 по 1700

class OptionalChainingSet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: ["Multiple queries can be chained together. Will the entire chain fail if any link in the chain is nil?",
								"If a link in the chain of multiple queries is nil, will the entire chain fail?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1602,
					 helpText: "Optional chaining is a process for querying and calling properties, methods, and subscripts on an optional that might currently be nil. If the optional contains a value, the property, method, or subscript call succeeds; if the optional is nil, the property, method, or subscript call returns nil. Multiple queries can be chained together, and the entire chain fails gracefully if any link in the chain is nil."),

			Question(question: ["Can an optional chaining be checked for success or failure?",
								"Optional chaining can be checked for success or failure. Is that correct?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "Only for success",
					 optionD: "Only for failure",
					 questionId: 1603,
					 helpText: "Optional chaining in Swift is similar to messaging nil in Objective-C, but in a way that works for any type, and that can be checked for success or failure."),

			Question(question: ["Will the optional chaining be executed if the optional is nil?",
								"If an optional is nil, will the optional chaining be executed?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 1604,
					 helpText: "You specify optional chaining by placing a question mark (?) after the optional value on which you wish to call a property, method or subscript if the optional is non-nil. This is very similar to placing an exclamation point (!) after an optional value to force the unwrapping of its value. The main difference is that optional chaining fails gracefully when the optional is nil, whereas forced unwrapping triggers a runtime error when the optional is nil."),

			Question(question: ["What will we get if we use forced unwrapping, when the optional is nil?",
								"When our optional is nil, forced unwrapping will lead to this..."],
					 image: "",
					 optionA: "Runtime error",
					 optionB: "Unwrapped value",
					 optionC: "We will get nil",
					 optionD: "",
					 questionId: 1605,
					 helpText: "Forced unwrapping triggers a runtime error when the optional is nil."),

			Question(question: ["What will an Int return when it accessed through optional chaining?",
								"A property that normally returns an Int will return an ___ when accessed through optional chaining"],
					 image: "",
					 optionA: "Int?",
					 optionB: "Int",
					 optionC: "nil",
					 optionD: "",
					 questionId: 1606,
					 helpText: "The result of an optional chaining call is of the same type as the expected return value, but wrapped in an optional. A property that normally returns an Int will return an Int? when accessed through optional chaining."),

			Question(question: ["Can we use optional chaining with calls to properties, methods, and subscripts that are more than one level deep?",
								"If properties, methods, and subscripts are more than one level deep, can we use optional chaining to call them?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1607,
					 helpText: "You can use optional chaining with calls to properties, methods, and subscripts that are more than one level deep. This enables you to drill down into sub-properties within complex models of interrelated types, and to check whether it is possible to access properties, methods, and subscripts on those sub-properties."),

			Question(question: ["Can you use optional chaining to call a method and check whether that method call is successful?",
								"Can we use optional chaining to call a method and check if it succeeds, even if that method does not define a return value?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1608,
					 helpText: "You can use optional chaining to call a method on an optional value, and to check whether that method call is successful. You can do this even if that method does not define a return value. Functions and methods with no return type have an implicit return type of Void. This means that they return a value of (), or an empty tuple. If you call this method on an optional value with optional chaining, the method’s return type will be Void?, not Void, because return values are always of an optional type when called through optional chaining."),

			Question(question: ["If the method's return type is Void?, can we use an if statement to check whether it was possible to call this method?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1609,
					 helpText: "If you call a method on an optional value with optional chaining, the method’s return type will be Void?, not Void, because return values are always of an optional type when called through optional chaining. This enables you to use an if statement to check whether it was possible to call the method, even though the method does not itself define a return value."),

			Question(question: ["Can you use optional chaining to try to retrieve and set a value from a subscript on an optional value?",
								"Can we use optional chaining to check whether a subscript call is successful?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1610,
					 helpText: "You can use optional chaining to try to retrieve and set a value from a subscript on an optional value, and to check whether that subscript call is successful."),

			Question(question: ["When you access a subscript on an optional value through optional chaining, where do you place the question mark?",
								"How to put a question mark correctly in an optional chaining?",
								"This is exactly where the question mark must be written in an optional chaining"],
					 image: "",
					 optionA: "Immediately after the optional part",
					 optionB: "After the subscript’s brackets",
					 optionC: "Before optional part of the expression",
					 optionD: "",
					 questionId: 1611,
					 helpText: "When you access a subscript on an optional value through optional chaining, you place the question mark before the subscript’s brackets, not after. The optional chaining question mark always follows immediately after the part of the expression that is optional."),

			Question(question: ["If the type you are trying to retrieve is not optional, will it become optional because of the optional chaining?",
								"If the type you are trying to retrieve is already optional, it will not become more optional because of the chaining. Is that correct?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1612,
					 helpText: "If the type you are trying to retrieve is not optional, it will become optional because of the optional chaining. If the type you are trying to retrieve is already optional, it will not become more optional because of the chaining."),

			Question(question: ["What will we get after running the following code?"],
					 image: "OptionalChaining13",
					 optionA: "B A",
					 optionB: "A B",
					 optionC: "B A C",
					 optionD: "A B C",
					 questionId: 1613,
					 helpText: "When x.b() is called, \"B\" is printed. Inside b(), the variable a is accessed, which executes the code when the lazy stored property is closed by typing \"A\". Since b() returns a non-nil value, c will never be called. As a result, the program outputs \"B\" and \"A\". Lazy stored properties (defined using the lazy keyword) represent properties that are set to the value the first time they are accessed. Using properties like these allows you to use memory more efficiently without cluttering it with unnecessary objects that you might not need.")
		]
	}
}
