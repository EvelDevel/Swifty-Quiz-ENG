
//  Created by Евгений Никитин on 12.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 22 - Вопросы (id) с 2101 по 2200

class GenericsSet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: ["What can you create with generics?",
								"What do generics help you to implement?",
								"Generics help you create ..."],
					 image: "",
					 optionA: "Flexible, reusable functions",
					 optionB: "Collections",
					 optionC: "Properties",
					 optionD: "Reusable closures",
					 questionId: 2101,
					 helpText: "Generic code enables you to write flexible, reusable functions and types that can work with any type, subject to requirements that you define. You can write code that avoids duplication and expresses its intent in a clear, abstracted manner."),
			
			Question(question: ["Are generics used in Swift standard libraries?",
								"Much of the Swift standard library is built with generic code. Is that true?",
								"Are generics common in the Swift standard libraries?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2102,
					 helpText: "Generics are one of the most powerful features of Swift, and much of the Swift standard library is built with generic code. Most probably, you’ve already been using generics, even if you didn’t realize it."),
			
			Question(question: ["Is Swift’s Array type a generic collection?",
								"Does Swift’s Dictionary type represent a generic collection?",
								"Are Swift’s Array and Dictionary types both generic collections?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "Only Dictionary",
					 optionD: "Only Array",
					 questionId: 2103,
					 helpText: "Swift’s Array and Dictionary types are both generic collections. You can create an array that holds Int values, or an array that holds String values, or an array for any other type that can be created in Swift. Similarly, you can create a dictionary to store values of any specified type, and there are no limitations on what that type can be."),
			
			Question(question: ["Which types can generic functions work with?",
								"Generic functions can work with the following type(s)"],
					 image: "",
					 optionA: "With any type",
					 optionB: "With integers",
					 optionC: "With strings",
					 optionD: "With reference type",
					 questionId: 2104,
					 helpText: "Generic functions can work with any type."),
			
			Question(question: ["Pick the placeholder type name that generic functions usually use"],
					 image: "",
					 optionA: "<T>",
					 optionB: "T",
					 optionC: "(T)",
					 optionD: "",
					 questionId: 2105,
					 helpText: "The generic version of the function uses a placeholder type name (<T>) instead of an actual type name (such as Int, String, or Double). The placeholder type name doesn’t say anything about what T must be, but it does say that all function’s parameters must be of the same type T. The current type that T represents is determined each time the function is called. If a parameter's type is not related to the function directly, the convention is to name such types using capital letters, like T, U, V."),
			
			Question(question: ["At what point the type to use for T is inferred from the types of values passed to the function?"],
					 image: "",
					 optionA: "Each time the function is called",
					 optionB: "When the function body runs",
					 optionC: "After the function is complete",
					 optionD: "When we define the function",
					 questionId: 2106,
					 helpText: "Each time the function is called, the type to use for T is inferred from the types of values passed to the function."),
			
			Question(question: ["Where is the type parameter here?"],
					 image: "Generics8",
					 optionA: "<T>",
					 optionB: "_ a: inout T",
					 optionC: "_ b: inout T",
					 optionD: "temporaryA",
					 questionId: 2107,
					 helpText: "In our example, the placeholder type T is an example of a type parameter. Type parameters specify and name a placeholder type, and are written immediately after the function’s name, between a pair of matching angle brackets (such as <T>). Once you specify a type parameter, you can use it to define the type of a function’s parameters (such as the a and b parameters of the swapTwoValues(_:_:) function), or as the function’s return type, or as a type annotation within the body of the function."),
			
			Question(question: ["Can you provide more than one type parameter?",
								"You can provide more than one type parameter by writing multiple names separated by commas. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2108,
					 helpText: "You can provide more than one type parameter by writing multiple type parameter names within the angle brackets, separated by commas."),
			
			Question(question: ["According to naming convention, which letter case should the type parameter names start with?",
								"It is recommended to use this case for the first letter of type parameter names",
								"Which case should be used for the first letter of type parameter in Swift?"],
					 image: "",
					 optionA: "Upper case",
					 optionB: "Lower case",
					 optionC: "Middle case :)",
					 optionD: "It doesn't matter",
					 questionId: 2109,
					 helpText: "Always give type parameters upper camel case names (such as T and MyTypeParameter) to indicate that they’re a placeholder for a type, not a value. For example: <T> or <Parameters>."),
			
			Question(question: ["Can we define our own generic types?",
								"Can we define our own generic types in addition to generic functions?",
								"Can you define a generic type in Swift?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2110,
					 helpText: "In addition to generic functions, Swift enables you to define your own generic types. These are custom classes, structures, and enumerations that can work with any type, in a similar way to Array and Dictionary."),
			
			Question(question: ["Can you extend a generic type?",
								"Can we extend a generic type?",
								"You can extend a generic type. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2111,
					 helpText: "Yes. When you extend a generic type, you don’t provide a type parameter list as part of the extension’s definition. Instead, the type parameter list from the original type definition is available within the body of the extension, and the original type parameter names are used to refer to the type parameters from the original definition."),
			
			Question(question: ["Do you provide a type parameter list as part of the extension’s definition while extending a generic type,"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2112,
					 helpText: "When you extend a generic type, you don’t provide a type parameter list as part of the extension’s definition. Instead, the type parameter list from the original type definition is available within the body of the extension, and the original type parameter names are used to refer to the type parameters from the original definition."),
			
			Question(question: ["... specify that a type parameter must inherit from a specific class, or conform to a particular protocol or protocol composition"],
					 image: "",
					 optionA: "Type constraints",
					 optionB: "Generic bounds",
					 optionC: "Borders",
					 optionD: "Reusable functions",
					 questionId: 2113,
					 helpText: "Sometimes it's useful to enforce certain type constraints on the types that can be used with generic functions and generic types. Type constraints specify that a type parameter must inherit from a specific class, or conform to a particular protocol or protocol composition. For example, Swift’s Dictionary type places a limitation on the types that can be used as keys for a dictionary. As described in Dictionaries, the type of a dictionary’s keys must be hashable. That is, it must provide a way to make itself uniquely representable."),
			
			Question(question: ["Can we define our own type constraints when creating custom generic types?",
								"Is that true that you can define your own type constraints when creating custom generic types?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2114,
					 helpText: "You can define your own type constraints when creating custom generic types, and these constraints provide much of the power of generic programming. Abstract concepts like Hashable characterize types in terms of their conceptual characteristics, rather than their concrete type."),
			
			Question(question: ["Which of the following options is a valid type constraint that requires T to be a subclass of SomeClass"],
					 image: "",
					 optionA: "<T: SomeClass>",
					 optionB: "<T> - SomeClass",
					 optionC: "<T(Someclass)>",
					 optionD: "",
					 questionId: 2115,
					 helpText: "You write type constraints by placing a single class or protocol constraint after a type parameter’s name, separated by a colon, as part of the type parameter list. func someFunction<T: SomeClass, U: SomeProtocol>(someT: T, someU: U) { // function body goes here }. The hypothetical function above has two type parameters. The first type parameter, T, has a type constraint that requires T to be a subclass of SomeClass. The second type parameter, U, has a type constraint that requires U to conform to the protocol SomeProtocol."),
			
			Question(question: ["What type constraint must be assigned to a generic type <T> to implement support for the equal to (==) and the not equal to (!=) operators?",
								"Which protocol requires any conforming type to implement the equal to operator (==) and the not equal to operator (!=) to compare any two values of that type?"],
					 image: "",
					 optionA: "Equatable protocol",
					 optionB: "Hashable",
					 optionC: "Any protocol",
					 optionD: "Arithmetic protocol",
					 questionId: 2116,
					 helpText: "The Swift standard library defines a protocol called Equatable, which requires any conforming type to implement the equal to operator (==) and the not equal to operator (!=) to compare any two values of that type. All of Swift’s standard types automatically support the Equatable protocol. Any type that is Equatable can be used safely with function because it’s guaranteed to support the equal to operator."),
			
			Question(question: ["Which keyword declares one or more associated types as part of the protocol’s definition?"],
					 image: "",
					 optionA: "associatedtype",
					 optionB: "mutating",
					 optionC: "subscript",
					 optionD: "append",
					 questionId: 2117,
					 helpText: "When defining a protocol, it’s sometimes useful to declare one or more associated types as part of the protocol’s definition. An associated type gives a placeholder name to a type that is used as part of the protocol. The actual type to use for that associated type isn’t specified until the protocol is adopted. Associated types are specified with the associatedtype keyword.")
			
		]
	}
}
