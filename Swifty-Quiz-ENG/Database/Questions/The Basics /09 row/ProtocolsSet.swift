
//  Created by Евгений Никитин on 12.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 23 - Вопросы (id) с 2201 по 2300

class ProtocolsSet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: ["Do protocols provide an implementation for any of their requirements?",
								"Protocols provide an implementation for their requirements. Is that true?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2201,
					 helpText: "A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. The protocol does not actually provide an implementation for any of these requirements, it only describes how the implementation should look like. "),

			Question(question: ["Can a protocol be adopted by a class or enumeration?",
								"Should a class provide the actual implementation of all requirements if it adopts a protocol?",
								"Should a structure fully satisfy the requirements of a protocol to conform to it?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "Depends on the situation",
					 optionD: "",
					 questionId: 2202,
					 helpText: "A protocol can be adopted by a class, structure, or enumeration to provide an actual implementation of its requirements. Any type that satisfies the requirements of a protocol is said to conform to that protocol."),

			Question(question: ["Can we extend a protocol to implement some additional functionality?",
								"Can you extend a protocol?",
								"In Swift we can extend protocols. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2203,
					 helpText: "In addition to specifying requirements that conforming types must implement, you can extend a protocol to implement some of these requirements or to implement additional functionality that conforming types can take advantage of."),

			Question(question: ["Which keyword can you use to define a protocol?",
								"Choose the keyword that defines a protocol in Swift",
								"This keyword defines a protocol"],
					 image: "",
					 optionA: "protocol",
					 optionB: "class",
					 optionC: "func",
					 optionD: "enum",
					 questionId: 2204,
					 helpText: "Correct answer: protocol. You define protocols in a very similar way to classes, structures, and enumerations."),

			Question(question: ["Where do you need to place the protocol's name while defining a custom type?",
								"If we define a custom type conformed to a protocol, this is where we put the protocol’s name",
								"Where do you need to specify the protocol name in your custom type’s definition?"],
					 image: "",
					 optionA: "name: Protocol {}",
					 optionB: "name(Protocol) {}",
					 optionC: "protocol: name {}",
					 optionD: "name - protocol ()",
					 questionId: 2205,
					 helpText: "Correct answer: name: Protocol {}. Custom types state that they adopt a particular protocol by placing the protocol’s name after the type’s name, separated by a colon, as part of their definition."),

			Question(question: ["Can we specify more than one protocol for our custom type?",
								"Can our custom type conform to multiple protocols?",
								"We can specify multiple protocols for our custom types. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2206,
					 helpText: "Multiple protocols can be listed, and are separated by commas."),

			Question(question: ["If a class has a superclass and multiple protocols, how should we list them after the colon?",
								"While declaring a custom type inherited from a superclass, and the type has many protocols, in what order must we put their names after colon?"],
					 image: "",
					 optionA: "Superclass, Protocol, Protocol",
					 optionB: "Protocol, Protocol, Superclass",
					 optionC: "It doesn't matter",
					 optionD: "",
					 questionId: 2207,
					 helpText: "If a class has a superclass, list the superclass name before any protocols it adopts, followed by a comma."),

			Question(question: ["Do protocols specify whether their properties should be stored or computed properties?",
								"A protocol doesn't specify whether each property must be gettable or gettable and settable. Is that true?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2208,
					 helpText: "A protocol can require any conforming type to provide an instance property or type property with a particular name and type. The protocol doesn’t specify whether the property should be a stored property or a computed property—it only specifies the required property name and type. The protocol also specifies whether each property must be gettable or gettable and settable."),

			Question(question: ["How you declare property requirements in a protocol?"],
					 image: "",
					 optionA: "As variable properties",
					 optionB: "As constant properties",
					 optionC: "Doesn't matter",
					 optionD: "",
					 questionId: 2209,
					 helpText: "Property requirements are always declared as variable properties, prefixed with the var keyword."),

			Question(question: ["How are you going to indicate gettable and settable properties within a protocol?",
								"Gettable and settable properties are indicated in the protocols in the following way"],
					 image: "",
					 optionA: "{ get set }",
					 optionB: "{ set }",
					 optionC: "{ get }",
					 optionD: "",
					 questionId: 2210,
					 helpText: "Gettable and settable properties are indicated by writing { get set } after their type declaration, and gettable properties are indicated by writing { get }."),

			Question(question: ["How are you going to indicate gettable properties within a protocol?",
								"This is how gettable properties are indicated in the protocols"],
					 image: "",
					 optionA: "{ get }",
					 optionB: "{ get set }",
					 optionC: "{ set }",
					 optionD: "",
					 questionId: 2211,
					 helpText: "Gettable and settable properties are indicated by writing { get set } after their type declaration, and gettable properties are indicated by writing { get }."),

			Question(question: ["When you define type property requirements in a protocol, always prefix it with the ___ keyword?",
								"We will need to use the ___ keyword to define type property requirements in a protocol"],
					 image: "",
					 optionA: "static",
					 optionB: "public",
					 optionC: "private",
					 optionD: "file private",
					 questionId: 2212,
					 helpText: "Always prefix type property requirements with the static keyword when you define them in a protocol."),

			Question(question: ["What will happen, if a protocol requirement is not fulfilled?",
								"If a protocol requirement is not fulfilled, what is going to happen?"],
					 image: "",
					 optionA: "Error at compile-time",
					 optionB: "Error at runtime",
					 optionC: "Nothing",
					 optionD: "Big-bang",
					 questionId: 2213,
					 helpText: "Swift reports an error at compile - time if a protocol requirement is not fulfilled."),

			Question(question: ["When we define a method inside a protocol, we write it without ___"],
					 image: "",
					 optionA: "Curly braces",
					 optionB: "Parentheses",
					 optionC: "Methods name",
					 optionD: "func keyword",
					 questionId: 2214,
					 helpText: "Protocols can require specific instance methods and type methods to be implemented by conforming types. These methods are written as part of the protocol’s definition in exactly the same way as for normal instance and type methods, but without curly braces or a method body."),

			Question(question: ["Are variadic parameters allowed in protocol definitions?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2215,
					 helpText: "Variadic parameters are allowed, subject to the same rules as for normal methods."),

			Question(question: ["Can we specify default values for method parameters within a protocol’s definition?",
								"Default values can be specified for method parameters within a protocol’s definition. Is that true?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2216,
					 helpText: "Default values can’t be specified for method parameters within a protocol’s definition."),

			Question(question: ["If you define a protocol instance method requirement that is intended to mutate instances of any type that adopts the protocol, mark the method with the ___ keyword as part of the protocol’s definition"],
					 image: "",
					 optionA: "mutating",
					 optionB: "static",
					 optionC: "public",
					 optionD: "mutable",
					 questionId: 2217,
					 helpText: "If you define a protocol instance method requirement that is intended to mutate instances of any type that adopts the protocol, mark the method with the mutating keyword as part of the protocol’s definition. This enables structures and enumerations to adopt the protocol and satisfy that method requirement."),

			Question(question: ["If you mark a protocol instance method requirement as mutating, do you need to write the mutating keyword when writing an implementation of that method for a class?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2218,
					 helpText: "If you mark a protocol instance method requirement as mutating, you don’t need to write the mutating keyword when writing an implementation of that method for a class. The mutating keyword is only used by structures and enumerations."),

			Question(question: ["How can you write initializers as part of the protocol’s definition?",
								"How should you write an initializer when defining a protocol?",
								"When you are defining the protocol, the initializer is written like this"],
					 image: "",
					 optionA: "Without { } or an initializer body",
					 optionB: "Without parameters",
					 optionC: "Without name",
					 optionD: "Without parentheses",
					 questionId: 2219,
					 helpText: "Protocols can require specific initializers to be implemented by conforming types. You write these initializers as part of the protocol’s definition in exactly the same way as for normal initializers, but without curly braces or an initializer body."),

			Question(question: ["When we have a class conforming to a protocol that requires an initializer, what modifier do we need to add to initializer when we declare it?"],
					 image: "",
					 optionA: "required",
					 optionB: "mutating",
					 optionC: "static",
					 optionD: "",
					 questionId: 2220,
					 helpText: "You can implement a protocol initializer requirement on a conforming class as either a designated initializer or a convenience initializer. In both cases, you must mark the initializer implementation with the required modifier. The use of the required modifier ensures that you provide an explicit or inherited implementation of the initializer requirement on all subclasses of the conforming class, such that they also conform to the protocol."),

			Question(question: ["Do you need to mark protocol initializer implementations with the required modifier on classes that are marked with the final modifier?",
								"If we have classes marked with the final modifier, is it required to mark protocol initializer implementations with the required modifier?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2221,
					 helpText: "You don’t need to mark protocol initializer implementations with the required modifier on classes that are marked with the final modifier, because final classes can’t subclassed."),

			Question(question: ["We will mark our initializer implementation with these modifiers, if a subclass overrides a designated initializer from its superclass",
								"We will mark our initializer implementation with the following modifiers, if a subclass implements a matching initializer requirement from a protocol"],
					 image: "",
					 optionA: "required and override",
					 optionB: "override and mutating",
					 optionC: "mutating and required",
					 optionD: "static and override",
					 questionId: 2222,
					 helpText: "If a subclass overrides a designated initializer from a superclass, and also implements a matching initializer requirement from a protocol, mark the initializer implementation with both the required and override modifiers."),

			Question(question: ["Is the protocol a fully fledged type?",
								"Protocols don’t actually implement any functionality themselves. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2223,
					 helpText: "Protocols don’t actually implement any functionality themselves. Nonetheless, you can use protocols as a fully fledged types in your code."),

			Question(question: ["Can we use a protocol as a parameter type or return type in a function, method or an initializer?",
								"Can we use a protocol as the type of a constant, variable, or a property?",
								"Can we use a protocol as the type of items in an array, dictionary, or other container?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2224,
					 helpText: "Yes, you can use a protocol in many places where other types are allowed, including: As a parameter type or return type in a function, method, or initializer. As the type of a constant, variable, or property. As the type of items in an array, dictionary, or other container."),

			Question(question: ["Should we capitalize the names of protocols?",
								"Do we need to begin protocol names with a capital letter?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2225,
					 helpText: "Because protocols are types, begin their names with a capital letter (such as FullyNamed and RandomNumberGenerator) to match the names of other types in Swift (such as Int, String, and Double)."),

			Question(question: ["A design pattern that enables a class or structure to hand off some of its responsibilities to an instance of another type"],
					 image: "",
					 optionA: "Delegation",
					 optionB: "Transfer of powers",
					 optionC: "Splitting protocol",
					 optionD: "",
					 questionId: 2226,
					 helpText: "Delegation is a design pattern that enables a class or structure to hand off (or delegate) some of its responsibilities to an instance of another type. This design pattern is implemented by defining a protocol that encapsulates the delegated responsibilities, such that a conforming type (known as a delegate) is guaranteed to provide the functionality that has been delegated. Delegation can be used to respond to a particular action, or to retrieve data from an external source without needing to know the underlying type of that source."),

			Question(question: ["If a type already satisfies all protocol requirements, but has not yet declared its conformance to that protocol, can you do it through an empty extension?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2227,
					 helpText: "If a type already satisfies all the requirements of a protocol, but has not yet declared that it conforms to the protocol, you can do it through an empty extension."),

			Question(question: ["Can a type accept a protocol automatically if it satisfies all the requirements of that protocol?",
								"Can a type accept a protocol automatically if it fully satisfies its requirements?",
								"The acceptance of a protocol can not be declared explicitly. Is that true?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2228,
					 helpText: "Types do not automatically conform to protocols even if they satisfy their requirements, that’s why the conformance must be declared explicitly. Existing instances of a type will automatically adopt the protocol once it is added to the instance type through an extension."),

			Question(question: ["Can a protocol be used as the type to be stored in a collection?",
								"Can a protocol be used as the type to be stored in arrays and dictionaries?",
								"Can a protocol be used as the type to be stored in a dictionaries?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "Only in arrays",
					 optionD: "",
					 questionId: 2229,
					 helpText: "A protocol can be used as the type to be stored in a collection such as an array or a dictionary."),

			Question(question: ["Can a protocol inherit one or more other protocols?",
								"Can a protocol inherit several other protocols?",
								"Can a protocol add further requirements on top of the requirements it inherits?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2230,
					 helpText: "A protocol can inherit one or more other protocols and can add further requirements on top of the requirements it inherits. The syntax for protocol inheritance is similar to the syntax for class inheritance, but with the option to list multiple inherited protocols, separated by commas."),

			Question(question: ["How can we limit protocol adoption to class types only?"],
					 image: "",
					 optionA: "Add AnyObject or class",
					 optionB: "Add classprivate",
					 optionC: "Add ObjectPrivate or Any?",
					 optionD: "",
					 questionId: 2231,
					 helpText: "You can limit protocol adoption to class types (and not structures or enumerations) by adding the AnyObject protocol to a protocol’s inheritance list. Also, in new versions of Swift, you can add a class keyword after colon instead (there are small specific differences that do not affect the main tasks)."),

			Question(question: ["When should we use class-only protocols?",
								"Choose the option that describes when we should opt for class-only protocols"],
					 image: "",
					 optionA: "When we need a reference semantics",
					 optionB: "When we need a value semantics",
					 optionC: "",
					 optionD: "",
					 questionId: 2232,
					 helpText: "Use a class-only protocol when the behavior defined by that protocol’s requirements assumes or requires that a conforming type has reference semantics rather than value semantics."),

			Question(question: ["What can we use, when we need a type which conforms to multiple protocols at the same time?"],
					 image: "",
					 optionA: "Protocol Composition",
					 optionB: "Group protocol",
					 optionC: "Temporary local protocol",
					 optionD: "Combined protocol",
					 questionId: 2233,
					 helpText: "Protocol Composition can be useful to require a type to conform to multiple protocols at the same time. You can combine multiple protocols into a single requirement with a protocol composition. Protocol compositions behave as if you defined a temporary local protocol that has the combined requirements of all protocols in the composition. Protocol compositions don’t define any new protocol types."),

			Question(question: ["How are protocols separated in a protocol composition?",
								"In protocol composition you separate protocols with that sign",
								"With which sign are the protocols separated in the protocol composition?"],
					 image: "",
					 optionA: "With ampersand (&)",
					 optionB: "With comma (,)",
					 optionC: "With colon (:)",
					 optionD: "",
					 questionId: 2234,
					 helpText: "Protocol compositions have the form SomeProtocol & AnotherProtocol. You can list as many protocols as you need, separating them with ampersands (&). In addition to its list of protocols, a protocol composition can also contain one class type, which you can use to specify a required superclass."),

			Question(question: ["Which operator can you use to check for protocol conformance?"],
					 image: "",
					 optionA: "is",
					 optionB: "as",
					 optionC: "switch",
					 optionD: "if",
					 questionId: 2235,
					 helpText: "You can use the is and as operators described in Type Casting to check for protocol conformance, and to cast to a specific protocol."),

			Question(question: ["Which operator can you use to cast to a specific protocol?"],
					 image: "",
					 optionA: "as",
					 optionB: "is",
					 optionC: "switch",
					 optionD: "if",
					 questionId: 2236,
					 helpText: "You can use the is and as operators described in Type Casting to check for protocol conformance, and to cast to a specific protocol. Checking for and casting to a protocol follows exactly the same syntax as checking for and casting to a type."),

			Question(question: ["If an instance conforms to a protocol, what will \"is\" operator return?",
								"What will \"is\" operator return, if an instance conforms to a protocol?"],
					 image: "",
					 optionA: "true",
					 optionB: "false",
					 optionC: "Nothing",
					 optionD: "nil",
					 questionId: 2237,
					 helpText: "The is operator returns true if an instance conforms to a protocol and returns false if it doesn’t. The as? version of the downcast operator returns an optional value of the protocol’s type, and this value is nil if the instance doesn’t conform to that protocol. The as! version of the downcast operator forces the downcast to the protocol type and triggers a runtime error if the downcast doesn’t succeed."),

			Question(question: ["With which modifier we can define optional requirements for the protocol?",
								"Which prefix modifier must we use to define an optional requirement for the protocol?",
								"Which prefix modifier should we use to define a requirement for the protocol that won't be required?"],
					 image: "",
					 optionA: "optional",
					 optionB: "?",
					 optionC: "optional?",
					 optionD: "option",
					 questionId: 2238,
					 helpText: "You can define optional requirements for protocols. These requirements don’t have to be implemented by types that conform to the protocol. Optional requirements are prefixed by the optional modifier as part of the protocol’s definition."),

			Question(question: ["What method type will we get if we use the optional requirement for a (Int) -> String method type?",
								"We have a method in the protocol with the type (Int) -> String, and if we add optional modifier to it, what type will we get?"],
					 image: "",
					 optionA: "((Int) -> String)?",
					 optionB: "(Int)? -> (String)?",
					 optionC: "(Int?) -> String?",
					 optionD: "",
					 questionId: 2239,
					 helpText: "When you use a method or property in an optional requirement, its type automatically becomes an optional. For example, a method of type (Int) -> String becomes ((Int) -> String)?. Note that the entire function type is wrapped in the optional, not the method’s return value."),

			Question(question: ["Can we use protocol extensions to provide a default implementation to any method or computed property requirement of that protocol?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2240,
					 helpText: "You can use protocol extensions to provide a default implementation to any method or computed property requirement of that protocol. If a conforming type provides its own implementation of a required method or property, that implementation will be used instead of the one provided by the extension.")
		]
	}
}
