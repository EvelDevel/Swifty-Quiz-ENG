
//  Created by Евгений Никитин on 12.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 11 - Вопросы (id) с 1001 по 1100

class MethodsSet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: ["What is the difference between methods and functions?",
								"This is how functions differ from methods",
								"The difference between methods and functions is that..."],
					 image: "",
					 optionA: "Methods are associated with a particular type",
					 optionB: "Methods can't be defined in enumerations",
					 optionC: "Methods are more global than functions",
					 optionD: "Functions are associated with a particular type",
					 questionId: 1002,
					 helpText: "Methods are functions that are associated with a particular type. Classes, structures, and enumerations can all define instance methods, which encapsulate specific tasks and functionality for working with an instance of a given type."),
			
			Question(question: ["Can classes define type methods?",
								"Can structures define type methods, which are associated with the type itself?",
								"Can enumerations define type methods, which are associated with the type itself?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1003,
					 helpText: "Classes, structures, and enumerations can also define type methods, which are associated with the type itself. Type methods are similar to class methods in Objective-C."),
			
			Question(question: ["Can we define methods in all of the following: classes, structures, and enumerations?",
								"We can define methods in structures and enumerations in Swift. Is that true?",
								"Is that right that, unlike class methods in Objective-C, Swift’s methods can also be defined in structures and enumerations?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1004,
					 helpText: "The fact that structures and enumerations can define methods in Swift is a major difference from C and Objective-C. In Objective-C, classes are the only types that can define methods. In Swift, you can choose whether to define a class, structure, or enumeration, and still have the flexibility to define methods on the type you create."),
			
			Question(question: ["Does the instance methods have exactly the same syntax as functions?",
								"Instance methods have exactly the same syntax as functions. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1005,
					 helpText: "Instance methods are functions that belong to instances of a particular class, structure, or enumeration. They support the functionality of those instances, either by providing ways to access and modify instance properties, or by providing functionality related to the instance’s purpose. Instance methods have exactly the same syntax as functions."),
			
			Question(question: ["Where do you need to write an instance method?",
								"How do you write instance methods?"],
					 image: "",
					 optionA: "Within the opening and closing braces",
					 optionB: "In an extension of the type it belongs to",
					 optionC: "In the name of the type it belongs to",
					 optionD: "In the protocol of the instance type",
					 questionId: 1006,
					 helpText: "You write an instance method within the opening and closing braces of the type it belongs to."),
			
			Question(question: ["Does an instance method have implicit access to all other instance methods and properties?",
								"An instance method has implicit access to all methods and properties of that type. Is that correct?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "It must have explicit access",
					 optionD: "",
					 questionId: 1007,
					 helpText: "Yes. An instance method has implicit access to all other instance methods and properties of that type."),
			
			Question(question: ["Can we call an instance method in isolation without an existing instance?",
								"Are you allowed to call instance methods without referencing to an existing instance?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 1008,
					 helpText: "An instance method can be called only on a specific instance of the type it belongs to. It cannot be called in isolation without an existing instance."),
			
			Question(question: ["You can call instance methods with that syntax",
								"Which syntax style we use while calling instance methods?"],
					 image: "",
					 optionA: "Dot syntax",
					 optionB: "Closure syntax",
					 optionC: "Syntax of Tuple declaration",
					 optionD: "Subscript syntax",
					 questionId: 1009,
					 helpText: "You call instance methods with the same dot syntax as properties."),
			
			Question(question: ["Can method parameters have both a name and an argument label?",
								"Method parameters can have both a name and an argument label. Is that right?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No, only name",
					 optionC: "No, only argument label",
					 optionD: "",
					 questionId: 1010,
					 helpText: "Function parameters can have both a name (for use within the function’s body) and an argument label (for use when calling the function). The same is true for method parameters, because methods are just functions that are associated with a type."),
			
			Question(question: ["In which case do we need to use the self property?",
								"You should use the implicit property self ..."],
					 image: "",
					 optionA: "To refer to the current instance",
					 optionB: "To refer to all other instances of the same type",
					 optionC: "",
					 optionD: "",
					 questionId: 1011,
					 helpText: "Every instance of a type has an implicit property called self, which is exactly equivalent to the instance itself. You use the self property to refer to the current instance within its own instance methods."),
			
			Question(question: ["Do you always need to write self while referring to the current instance in your code?",
								"Does Swift require you to explicitly write self every time you refer to the current instance in a method?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 1012,
					 helpText: "In practice, you don’t need to write self in your code very often. If you don’t explicitly write self, Swift assumes that you are referring to a property or method of the current instance whenever you use a known property or method name within a method. The main exception to this rule occurs when a parameter name for an instance method has the same name as a property of that instance. In this situation, the parameter name takes precedence, and it becomes necessary to refer to the property in a more qualified way. You use the self property to distinguish between the parameter name and the property name."),
			
			Question(question: ["Do we need to explicitly write self in the code, if a parameter name for an instance method has the same name as a property of that instance?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1013,
					 helpText: "When a parameter name for an instance method has the same name as a property of that instance, the parameter name takes precedence, and it becomes necessary to refer to the property in a more qualified way. You use the self property to distinguish between the parameter name and the property name."),
			
			Question(question: ["Structures and enumerations are..."],
					 image: "",
					 optionA: "value types",
					 optionB: "reference type",
					 optionC: "",
					 optionD: "",
					 questionId: 1014,
					 helpText: "Structures and enumerations are value types."),
			
			Question(question: ["If you need to modify the properties of your structure within a particular method, which keyword should you use?",
								"What method can mutate (that is, change) the properties of a structure or enumeration from within its method?",
								"The keyword that you place before the func keyword when you need your method to change the properties of its structure."],
					 image: "",
					 optionA: "mutating",
					 optionB: "static",
					 optionC: "public",
					 optionD: "private",
					 questionId: 1015,
					 helpText: "If you need to modify the properties of your structure or enumeration within a particular method, you can opt in to mutating behavior by placing the mutating keyword before the func keyword for that method. The method can then mutate (that is, change) its properties from within the method, and any changes that it makes are written back to the original structure when the method ends. The method can also assign a completely new instance to its implicit self property, and this new instance will replace the existing one when the method ends."),
			
			Question(question: ["Can you call a mutating method on a constant of structure type?",
								"You can call a mutating method on a constant of structure type. Is that true?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "Only if its properties are variables",
					 optionD: "",
					 questionId: 1016,
					 helpText: "You cannot call a mutating method on a constant of structure type, because its properties cannot be changed, even if they are variable properties."),
			
			Question(question: ["Can mutating methods assign an entirely new instance to the implicit self property?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1017,
					 helpText: "Mutating methods can assign an entirely new instance to the implicit self property."),
			
			Question(question: ["Can mutating methods for enumerations make the self parameter to be a different case from the same enumeration?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1018,
					 helpText: "Mutating methods for enumerations can set the implicit self parameter to be a different case from the same enumeration."),
			
			Question(question: ["The keyword you use to define type methods",
								"Type methods can be defined through this keyword",
								"You can define methods that are called by the type itself (type methods). Which keyword should you use in this case?"],
					 image: "",
					 optionA: "static",
					 optionB: "class",
					 optionC: "public",
					 optionD: "fileprivate",
					 questionId: 1019,
					 helpText: "You can define methods that are called on the type itself. These kinds of methods are called type methods. You indicate type methods by writing the static keyword before the method’s func keyword. Classes can use the class keyword instead, to allow subclasses to override the superclass’s implementation of that method."),
			
			Question(question: ["Can you define type-level methods for classes?",
								"Can you define type-level methods for structures?",
								"Can you define type-level methods for enumerations?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1020,
					 helpText: "In Objective-C, you can define type-level methods only for Objective-C classes. In Swift, you can define type-level methods for all classes, structures, and enumerations. Each type method is explicitly scoped to the type it supports."),
			
			Question(question: ["Do we use dot syntax to call type methods?",
								"Type methods are called with dot syntax, like instance methods. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1021,
					 helpText: "Type methods are called with dot syntax, like instance methods. However, you call type methods on the type, not on an instance of that type."),
			
			Question(question: ["How many methods does Counter have?"],
					 image: "Methods22",
					 optionA: "Two",
					 optionB: "Three",
					 optionC: "One",
					 optionD: "Counter doesn't have any methods",
					 questionId: 1022,
					 helpText: "Correct answer: Two - increment() and increment(by amount: Int). All functions belonging to a particular class are methods."),
			
			Question(question: ["With the following code, will we expect to see a message printed to the console?"],
					 image: "Methods23",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1023,
					 helpText: "Correct answer: Yes. First, we set the x property to 4.0. Then we call our instance method and check if 4.0 is greater than 1.0 in the following line \"if somePoint.isToTheRightOf(x: 1.0)\".  Since that statement is true, the message gets printed to the console."),
			
			Question(question: ["What result will we get if we remove \"self\" from \"return self.x > x\"?"],
					 image: "Methods23",
					 optionA: "Print will not work",
					 optionB: "Print will work",
					 optionC: "Compile-time error",
					 optionD: "",
					 questionId: 1024,
					 helpText: "Correct answer: Print will not work. If we remove self, then the method will consider that we are comparing the input parameter x with the same input parameter x, but such comparison cannot return true. So, since our method will always return false, print won’t be triggered."),
			
			Question(question: ["Can we set the implicit self like this?"],
					 image: "Methods25",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1025,
					 helpText: "Mutating methods for enumerations can set the implicit self parameter to be a different case from the same enumeration. This example defines an enumeration for a three-state switch. The switch cycles between three different power states (off, low and high) every time its next() method is called.")
		]
	}
}
