
//  Created by Евгений Никитин on 12.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 13 - Вопросы (id) с 1201 по 1300

class InheritanceSet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: ["Do structures support inheritance?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 1202,
					 helpText: "No. Inheritance is a fundamental behavior that differentiates classes from other types in Swift."),
			
			Question(question: ["Do enumerations support inheritance?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 1203,
					 helpText: "No. Inheritance is a fundamental behavior that differentiates classes from other types in Swift."),
			
			Question(question: ["When one class inherits from another, the inheriting class is known as a ...",
								"Choose the word we use to refer to a class that inherits all the characteristics from another class?"],
					 image: "",
					 optionA: "Subclass",
					 optionB: "Seperclass",
					 optionC: "Class",
					 optionD: "Inheritor",
					 questionId: 1204,
					 helpText: "A class can inherit methods, properties, and other characteristics from another class. When one class inherits from another, the inheriting class is known as a subclass, and the class it inherits from is known as its superclass."),
			
			Question(question: ["When one class inherits from another, the class it inherits from is known as ...",
								"How do we call a class that provides all of its characteristics, e.g., methods, properties, etc., to another class?"],
					 image: "",
					 optionA: "Superclass",
					 optionB: "Subclass",
					 optionC: "Class",
					 optionD: "",
					 questionId: 1205,
					 helpText: "When one class inherits from another, the inheriting class is known as a subclass, and the class it inherits from is known as its superclass."),
			
			Question(question: ["Can classes in Swift call and access methods belonging to their superclass?",
								"Classes in Swift can both call and access properties and subscripts belonging to their superclass. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "Only access",
					 optionD: "Only call",
					 questionId: 1206,
					 helpText: "Classes in Swift can call and access methods, properties, and subscripts belonging to their superclass and can provide their own overriding versions of those methods, properties, and subscripts to refine or modify their behavior."),
			
			Question(question: ["Can classes provide their own overriding versions of their superclass methods or properties to refine their behavior?",
								"Can classes provide their own overriding versions of their superclass properties and subscripts to modify their behavior?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1207,
					 helpText: "Classes in Swift can call and access methods, properties, and subscripts belonging to their superclass and can provide their own overriding versions of those methods, properties, and subscripts to refine or modify their behavior."),
			
			Question(question: ["Can classes add property observers to inherited properties?",
								"Can classes add property observers to stored or computed property?",
								"Can we add property observers to any property?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "Only to stored property",
					 optionD: "Only to computed property",
					 questionId: 1208,
					 helpText: "Classes can also add property observers to inherited properties in order to be notified when the value of a property changes. Property observers can be added to any property, regardless of whether it was originally defined as a stored or computed property."),
			
			Question(question: ["Any class that does not inherit from another class is known as a ...",
								"A class that doesn’t inherit from another class",
								"How do we refer to a class that doesn't inherit from another class?"],
					 image: "",
					 optionA: "Base class",
					 optionB: "Empty class",
					 optionC: "Default class",
					 optionD: "Superclass",
					 questionId: 1209,
					 helpText: "Any class that does not inherit from another class is known as a base class. Swift classes do not inherit from a universal base class. Classes you define without specifying a superclass automatically become base classes for you to build upon."),
			
			Question(question: ["The act of basing a new class on an existing class",
								"How is the act of basing a new class on an existing class called?"],
					 image: "",
					 optionA: "Subclassing",
					 optionB: "Conformity",
					 optionC: "Modification",
					 optionD: "Declassing",
					 questionId: 1210,
					 helpText: "Subclassing is the act of basing a new class on an existing class. The subclass inherits characteristics from the existing class, which you can then refine. You can also add new characteristics to the subclass."),
			
			Question(question: ["To indicate that a subclass has a superclass, write the subclass name before the superclass name, separated by ...",
								"When you indicate that a subclass has a superclass, their names should be separated by ..."],
					 image: "",
					 optionA: "Colon (:)",
					 optionB: "Semicolon (;)",
					 optionC: "Ellipsis (...)",
					 optionD: "",
					 questionId: 1211,
					 helpText: "To indicate that a subclass has a superclass, write the subclass name before the superclass name, separated by a colon."),
			
			Question(question: ["Can subclasses themselves be subclassed?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1212,
					 helpText: "Subclasses can themselves be subclassed."),
			
			Question(question: ["The act of providing a custom implementation of instance methods initially defined on a superclass",
								"Which option refers to the process of providing a custom implementation of a type method or instance property that a class would otherwise inherit from a superclass",
								"The process of providing a custom implementation of a type property or subscript defined on a superclass"],
					 image: "",
					 optionA: "Overriding",
					 optionB: "Overwriting",
					 optionC: "Overrecording",
					 optionD: "Reconfiguration",
					 questionId: 1213,
					 helpText: "A subclass can provide its own custom implementation of an instance method, type method, instance property, type property, or subscript that it would otherwise inherit from a superclass. This is known as overriding."),
			
			Question(question: ["To modify a characteristic that would otherwise be inherited, you prefix your overriding definition with the ... keyword",
								"Which of the following is the keyword required when you want to modify methods or properties of a superclass",
								"The keyword for overriding"],
					 image: "",
					 optionA: "override",
					 optionB: "overwrite",
					 optionC: "overdrive",
					 optionD: "over",
					 questionId: 1214,
					 helpText: "To override a characteristic that would otherwise be inherited, you prefix your overriding definition with the override keyword. Doing so clarifies that you intend to provide an override and have not provided a matching definition by mistake. Overriding by accident can cause unexpected behavior, and any overrides without the override keyword are diagnosed as an error when your code is compiled. The override keyword also prompts the Swift compiler to check that your overriding class’s superclass (or one of its parents) has a declaration that matches the one you provided for the override. This check ensures that your overriding definition is correct."),
			
			Question(question: ["You access the superclass version of a method, property, or subscript by using that prefix",
								"When you provide a method override for a subclass, it is useful to use the existing superclass implementation. What keyword must we use in this case?"],
					 image: "",
					 optionA: "super",
					 optionB: "superior",
					 optionC: "superclass",
					 optionD: "sup",
					 questionId: 1215,
					 helpText: "When you provide a method, property, or subscript override for a subclass, it is sometimes useful to use the existing superclass implementation as part of your override. For example, you can refine the behavior of that existing implementation, or store a modified value in an existing inherited variable. Where this is appropriate, you access the superclass version of a method, property, or subscript by using the super prefix. For instance, an overridden method named someMethod() can call the superclass version of someMethod() by calling super.someMethod() within the overriding method implementation. Another options is to access the superclass version of an overridden property called someProperty as super.someProperty within the overriding getter or setter implementation."),
			
			Question(question: ["Can you override an inherited instance or type method",
								"If you want to provide a tailored or alternative implementation of the method within your subclass, can you override it?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1216,
					 helpText: "You can override an inherited instance or type method to provide a tailored or alternative implementation of the method within your subclass."),
			
			Question(question: ["Can you override an inherited instance or type property to provide your own custom getter and setter for that property?",
								"Can you add property observers to enable the overriding property to observe when the underlying property value changes?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1217,
					 helpText: "You can override an inherited instance or type property to provide your own custom getter and setter for that property, or to add property observers to enable the overriding property to observe when the underlying property value changes."),
			
			Question(question: ["While providing a custom getter to override an inherited property, does it matter whether the property is implemented as a stored or computed property at source?",
								"You can't provide a custom getter or setter to override an inherited property. Is that correct?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 1218,
					 helpText: "You can provide a custom getter (and setter, if appropriate) to override any inherited property, regardless of whether the inherited property is implemented as a stored or computed property at source. The stored or computed nature of an inherited property is not known by a subclass — it only knows that the inherited property has a certain name and type."),
			
			Question(question: ["Can you present an inherited read-only property as a read-write property?",
								"It’s impossible to present an inherited read-write property as a read-only property. Is that so?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1219,
					 helpText: "You can present an inherited read-only property as a read-write property by providing both a getter and a setter in your subclass property override. You cannot, however, present an inherited read-write property as a read-only property."),
			
			Question(question: ["Do we always need to state both the name and the type of the property we are overriding?",
								"You must always state both the name and the type of the property you are overriding. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1220,
					 helpText: "You must always state both the name and the type of the property you are overriding, to enable the compiler to check that your override matches a superclass property with the same name and type."),
			
			Question(question: ["If you provide a setter as part of a property override, do you also need to provide a getter?",
								"Is it true that once a setter is provided as part of a property override, a getter must be provided for that override as well?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1221,
					 helpText: "If you provide a setter as part of a property override, you must also provide a getter for that override."),
			
			Question(question: ["Can we add property observers to inherited constant stored properties or inherited read-only computed properties?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 1222,
					 helpText: "You cannot add property observers to inherited constant stored properties or inherited read-only computed properties. The value of these properties cannot be set, and so it is not appropriate to provide a willSet or didSet implementation as part of an override."),
			
			Question(question: ["You can prevent a method, property, or subscript from being overridden by marking it as ...",
								"You can prevent a method from being overridden by writing this modifier before the method",
								"Which keyword do you need to use to prevent a property from being overridden?",
								"Which keyword do you need to put before a subscript to prevent it from being overridden?"],
					 image: "",
					 optionA: "final",
					 optionB: "end",
					 optionC: "private",
					 optionD: "static",
					 questionId: 1223,
					 helpText: "You can prevent a method, property, or subscript from being overridden by marking it as final. Do this by writing the final modifier before the method, property, or subscript’s introducer keyword (such as final var, final func, final class func, and final subscript)."),
			
			Question(question: ["Any attempt to override a final method in a subclass will be reported as a ...",
								"Any attempt to override a final property in a subclass will be reported as a ...",
								"Any attempt to override a final subscript in a subclass is reported as a ..."],
					 image: "",
					 optionA: "Compile-time error",
					 optionB: "It's not reported",
					 optionC: "Runtime error",
					 optionD: "A warning",
					 questionId: 1224,
					 helpText: "Any attempt to override a final method, property, or subscript in a subclass is reported as a compile-time error."),
			
			Question(question: ["Can the methods that you add to a class in an extension be marked as final?",
								"Can the properties that you add to a class in an extension be marked as final within the extension’s definition?",
								"Can the subscripts that you add to a class in an extension be marked as final?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1225,
					 helpText: "Methods, properties, or subscripts that you add to a class in an extension can also be marked as final within the extension’s definition."),
			
			Question(question: ["Can you mark an entire class as final?",
								"Can you mark an entire class as final by writing the final modifier before the class keyword in its class definition?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1226,
					 helpText: "You can mark an entire class as final by writing the final modifier before the class keyword in its class definition (final class). Any attempt to subclass a final class is reported as a compile-time error.")
		]
	}
}
