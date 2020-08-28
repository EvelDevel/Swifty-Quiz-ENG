
//  Created by Евгений Никитин on 12.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 19 - Вопросы (id) с 1801 по 1900

class TypeCastingSet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: ["Type casting in Swift is implemented with ___ operators",
								"We are implementing type casting in Swift using ___ operators"],
					 image: "",
					 optionA: "is and as",
					 optionB: "+ and -",
					 optionC: "is",
					 optionD: "as",
					 questionId: 1802,
					 helpText: "Type casting in Swift is implemented with the is and as operators. These two operators provide a simple and expressive way to check the type of a value or cast a value to a different type."),

			Question(question: ["With which operator we can check whether an instance is of a certain subclass type?",
								"Check whether an instance is of a certain subclass type is done through this type check operator"],
					 image: "",
					 optionA: "is",
					 optionB: "as",
					 optionC: "in",
					 optionD: "out",
					 questionId: 1803,
					 helpText: "Use the type check operator (is) to check whether an instance is of a certain subclass type."),

			Question(question: ["The type check operator returns ___",
								"The type check operator return this kind of results",
								"What type of result will be after using type check operator \"is\"?"],
					 image: "",
					 optionA: "Bool (true, false)",
					 optionB: "0 or 1",
					 optionC: "true or nil",
					 optionD: "",
					 questionId: 1804,
					 helpText: "The type check operator returns true if the instance is of that subclass type and false if it is not."),

			Question(question: ["Pick the type cast operator",
								"With which operator you can try to downcast to the subclass type?"],
					 image: "",
					 optionA: "as? or as!",
					 optionB: "is! or is?",
					 optionC: "as? or is!",
					 optionD: "as! or is!",
					 questionId: 1805,
					 helpText: "A constant or variable of a certain class type may actually refer to an instance of a subclass behind the scenes. Where you believe this is the case, you can try to downcast to the subclass type with a type cast operator (as? or as!)."),

			Question(question: ["Which form of the type cast operator as you must use when you are not sure if the downcast will succeed?",
								"When you are not sure if the downcast will succeed, which form of the type cast operator as you must use?"],
					 image: "",
					 optionA: "as?",
					 optionB: "as!",
					 optionC: "as",
					 optionD: "",
					 questionId: 1806,
					 helpText: "Use the conditional form of the type cast operator (as?) when you are not sure if the downcast will succeed. This form of the operator will always return an optional value, and the value will be nil if the downcast was not possible. This enables you to check for a successful downcast."),

			Question(question: ["Can we check for a successful downcast?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1807,
					 helpText: "Yes, you to check for a successful downcast."),

			Question(question: ["What is going to happen if you try to downcast to an incorrect class type?",
								"If we will try to downcast to an incorrect class type, what is going to happen?"],
					 image: "",
					 optionA: "Runtime error ",
					 optionB: "Compilation error",
					 optionC: "Nothing",
					 optionD: "nil",
					 questionId: 1808,
					 helpText: "Use the forced form of the type cast operator (as!) only when you are sure that the downcast will always succeed. This form of the operator will trigger a runtime error if you try to downcast to an incorrect class type."),

			Question(question: ["Does casting modify the instance or change its value??",
								"Casting does actually modify the instance or change its values. Is that true?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 1809,
					 helpText: "Casting does not actually modify the instance or change its values. The underlying instance remains the same; it is simply treated and accessed as an instance of the type to which it has been cast."),

			Question(question: ["What two special types for working with nonspecific types we have in Swift?",
								"Swift provides two special types for working with nonspecific types, which one?"],
					 image: "",
					 optionA: "Any and AnyObject",
					 optionB: "Object and AnyObject",
					 optionC: "Any! and Any?",
					 optionD: "",
					 questionId: 1810,
					 helpText: "Swift provides two special types for working with nonspecific types: Any can represent an instance of any type at all, including function types. AnyObject can represent an instance of any class type. Use Any and AnyObject only when you explicitly need the behavior and capabilities they provide. It is always better to be specific about the types you expect to work with in your code."),

			Question(question: ["Can you use an is or as pattern in a switch statement’s cases?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1811,
					 helpText: "To discover the specific type of a constant or variable that is known only to be of type Any or AnyObject, you can use an is or as pattern in a switch statement’s cases.")
		]
	}
}
