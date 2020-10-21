
//  Created by Евгений Никитин on 25.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 28 - Вопросы (id) с 2601 по 2700

class CreationalPatternsSet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: ["This creational design pattern lets you ensure that a class has only one instance, while providing a global access point to this instance",
								"Which of the creational design patterns provides a global access point to one instance?"],
					 image: "",
					 optionA: "Singleton",
					 optionB: "Memento",
					 optionC: "Facade",
					 optionD: "Observer",
					 questionId: 2601,
					 helpText: "Singleton is a creational design pattern that lets you ensure that a class has only one instance, while providing a global access point to this instance."),
			
			Question(question: ["Which pattern provides an interface for creating objects in a superclass, but allows subclasses to alter the type of objects that will be created?"],
					 image: "",
					 optionA: "Factory Method",
					 optionB: "Builder",
					 optionC: "Abstract Factory",
					 optionD: "Prototype",
					 questionId: 2602,
					 helpText: "Factory Method is a creational design pattern that provides an interface for creating objects in a superclass, but allows subclasses to alter the type of objects that will be created."),
			
			Question(question: ["This creational design pattern lets you construct complex objects step by step",
								"Which creational pattern allows you to produce different types and representations of an object using the same construction code?"],
					 image: "",
					 optionA: "Builder",
					 optionB: "Factory Method",
					 optionC: "Abstract Factory",
					 optionD: "Prototype",
					 questionId: 2603,
					 helpText: "Builder is a creational design pattern that lets you construct complex objects step by step. The pattern allows you to produce different types and representations of an object using the same construction code."),
			
			Question(question: ["With which creational design pattern you can move the product creation code into one place in the program, making the code easier to support",
								"Which of these helps to avoid tight coupling between the creator and the concrete products",
								"With that creational patterns you can introduce new types of products into the program without breaking existing client code"],
					 image: "",
					 optionA: "Factory Method",
					 optionB: "Builder",
					 optionC: "Singleton",
					 optionD: "",
					 questionId: 2604,
					 helpText: "Factory Method advantages: You avoid tight coupling between the creator and the concrete products. Single Responsibility Principle. You can move the product creation code into one place in the program, making the code easier to support. Open/Closed Principle. You can introduce new types of products into the program without breaking existing client code."),
			
			Question(question: ["This creational design pattern restricts the instantiation of a class to one \"single\" instance"],
					 image: "",
					 optionA: "Singleton",
					 optionB: "Factory Method",
					 optionC: "Builder",
					 optionD: "",
					 questionId: 2605,
					 helpText: "The singleton pattern is a design pattern that restricts the instantiation of a class to one \"single\" instance. This is useful when exactly one object is needed to coordinate actions across the system. The term comes from the mathematical concept of a singleton."),
			
			Question(question: ["This creational design pattern is used to avoid the inherent cost of creating a new object in the standard way when it is prohibitively expensive for a given application"],
					 image: "",
					 optionA: "Prototype",
					 optionB: "Factory Method",
					 optionC: "Builder",
					 optionD: "",
					 questionId: 2606,
					 helpText: "The prototype pattern is a creational design pattern in software development. It is used when the type of objects to create is determined by a prototypical instance, which is cloned to produce new objects. This pattern is used to: avoid subclasses of an object creator in the client application, avoid the inherent cost of creating a new object in the standard way (e.g., using the 'new' keyword) when it is prohibitively expensive for a given application."),
			
			Question(question: ["Which creational design pattern uses Creator class?"],
					 image: "",
					 optionA: "Factory Method",
					 optionB: "Prototype",
					 optionC: "Builder",
					 optionD: "",
					 questionId: 2607,
					 helpText: "The Creator class declares the factory method that returns new product objects. It’s important that the return type of this method matches the product interface."),
			
			Question(question: ["The intent of that creational design pattern is to separate the construction of a complex object from its representation"],
					 image: "",
					 optionA: "Builder",
					 optionB: "Prototype",
					 optionC: "Factory Method",
					 optionD: "",
					 questionId: 2608,
					 helpText: "The builder pattern is a design pattern designed to provide a flexible solution to various object creation problems in object-oriented programming. The intent of the Builder design pattern is to separate the construction of a complex object from its representation. It is one of the Gang of Four design patterns."),
			
			Question(question: ["This creational design pattern provides a way to encapsulate a group of individual factories that have a common theme without specifying their concrete classes"],
					 image: "",
					 optionA: "Abstract Factory",
					 optionB: "Prototype",
					 optionC: "Factory Method",
					 optionD: "Builder",
					 questionId: 2609,
					 helpText: "The abstract factory pattern provides a way to encapsulate a group of individual factories that have a common theme without specifying their concrete classes. In normal usage, the client software creates a concrete implementation of the abstract factory and then uses the generic interface of the factory to create the concrete objects that are part of the theme. The client does not know (or care) which concrete objects it gets from each of these internal factories, since it uses only the generic interfaces of their products. This pattern separates the details of implementation of a set of objects from their general usage and relies on object composition, as object creation is implemented in methods exposed in the factory interface."),
			
			Question(question: ["Some critics consider one of these creational patterns to be an anti-pattern in that it is frequently used in scenarios where it is not beneficial"],
					 image: "",
					 optionA: "Singleton",
					 optionB: "Delegation",
					 optionC: "Abstract Factory",
					 optionD: "",
					 questionId: 2610,
					 helpText: "Critics consider the singleton to be an anti-pattern in that it is frequently used in scenarios where it is not beneficial, introduces unnecessary restrictions in situations where a sole instance of a class is not actually required, and introduces global state into an application."),
			
			Question(question: ["To implement this creational design pattern, declare an abstract base class that specifies a pure virtual clone() method"],
					 image: "",
					 optionA: "Prototype",
					 optionB: "Mediator",
					 optionC: "Proxy",
					 optionD: "Builder",
					 questionId: 2611,
					 helpText: "To implement the Prototype pattern, declare an abstract base class that specifies a pure virtual clone() method. Any class that needs a \"polymorphic constructor\" capability derives itself from the abstract base class, and implements the clone() method. The client, instead of writing code that invokes the \"new\" operator on a hard-coded class name, calls the clone() method on the prototype, calls a factory method with a parameter designating the particular concrete derived class desired, or invokes the clone() method through some mechanism provided by another design pattern. The mitotic division of a cell — resulting in two identical cells — is an example of a prototype that plays an active role in copying itself and thus, demonstrates the Prototype pattern. When a cell splits, two cells of identical genotype result. In other words, the cell clones itself."),
			
			Question(question: ["This creational design pattern solves problems like: How can a class (the same construction process) create different representations of a complex object?"],
					 image: "",
					 optionA: "Builder",
					 optionB: "Factory Method",
					 optionC: "Prototype",
					 optionD: "",
					 questionId: 2612,
					 helpText: "The Builder design pattern solves problems like: How can a class (the same construction process) create different representations of a complex object? How can a class that includes creating a complex object be simplified?"),
			
			Question(question: ["Choose the creational pattern that separates product construction code from the code that actually uses the product"],
					 image: "",
					 optionA: "Factory Method",
					 optionB: "Builder",
					 optionC: "Prototype",
					 optionD: "",
					 questionId: 2613,
					 helpText: "Use the Factory Method when you don’t know beforehand the exact types and dependencies of the objects your code should work with. The Factory Method separates product construction code from the code that actually uses the product. Therefore it’s easier to extend the product construction code independently from the rest of the code. For example, to add a new product type to the app, you’ll only need to create a new creator subclass and override the factory method in it."),
			
			Question(question: ["Which creational design pattern is this?"],
					 image: "CreationalPatterns2",
					 optionA: "Abstract Factory",
					 optionB: "Factory Method",
					 optionC: "Builder",
					 optionD: "Prototype",
					 questionId: 2614,
					 helpText: "Abstract Factory is a creational design pattern that lets you produce families of related objects without specifying their concrete classes."),
			
			Question(question: ["The creational design pattern that can solve problems like: How can an application be independent of how its objects are created?",
								"This creational design pattern solves problems like: How can a class be independent of how the objects it requires are created?",
								"The creational pattern that solves problems like: How can families of related or dependent objects be created?"],
					 image: "",
					 optionA: "Abstract Factory",
					 optionB: "Singleton",
					 optionC: "Flyweight",
					 optionD: "",
					 questionId: 2615,
					 helpText: "The Abstract Factory design pattern solves problems like: How can an application be independent of how its objects are created? How can a class be independent of how the objects it requires are created? How can families of related or dependent objects be created? Creating objects directly within the class that requires the objects is inflexible because it commits the class to particular objects and makes it impossible to change the instantiation later independently from (without having to change) the class. It stops the class from being reusable if other objects are required, and it makes the class hard to test because real objects cannot be replaced with mock objects."),
			
			Question(question: ["Which creational design pattern is on this image?"],
					 image: "CreationalPatterns3",
					 optionA: "Builder",
					 optionB: "Prototype",
					 optionC: "Singleton",
					 optionD: "",
					 questionId: 2616,
					 helpText: "Builder is a creational design pattern that lets you construct complex objects step by step. The pattern allows you to produce different types and representations of an object using the same construction code."),
			
			Question(question: ["The intent of that creational design pattern is to insulate the creation of objects from their usage and to create families of related objects without having to depend on their concrete classes"],
					 image: "",
					 optionA: "Abstract Factory",
					 optionB: "Factory Method",
					 optionC: "Prototype",
					 optionD: "Adapter",
					 questionId: 2617,
					 helpText: "A factory is the location of a concrete class in the code at which objects are constructed. The intent in employing the pattern is to insulate the creation of objects from their usage and to create families of related objects without having to depend on their concrete classes. This allows for new derived types to be introduced with no change to the code that uses the base class."),
			
			Question(question: ["Can Prototype objects be added and removed at run-time?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2618,
					 helpText: "The Prototype design pattern describes how to solve such problems: Define a Prototype object that returns a copy of itself. Create new objects by copying a Prototype object. This enables configuration of a class with different Prototype objects, which are copied to create new objects, and even more, Prototype objects can be added and removed at run-time."),
			
			Question(question: ["This creational design pattern solve problems like: How can the sole instance of a class be accessed easily?"],
					 image: "",
					 optionA: "Singleton",
					 optionB: "Prototype",
					 optionC: "Observer",
					 optionD: "",
					 questionId: 2619,
					 helpText: "The Singleton design pattern solves problems like: How can it be ensured that a class has only one instance? How can the sole instance of a class be accessed easily? How can a class control its instantiation? How can the number of instances of a class be restricted? How can a global variable be accessed?"),
			
			Question(question: ["Which creational design pattern is on the image?"],
					 image: "CreationalPatterns4",
					 optionA: "Prototype",
					 optionB: "Singleton",
					 optionC: "Builder",
					 optionD: "",
					 questionId: 2620,
					 helpText: "Prototype. It is a creational design pattern that lets you copy existing objects without making your code dependent on their classes."),
			
			Question(question: ["Use this creational pattern to make it possible to interchange concrete implementations without changing the code that uses them, even at runtime"],
					 image: "",
					 optionA: "Abstract Factory",
					 optionB: "Composite",
					 optionC: "Strategy",
					 optionD: "",
					 questionId: 2621,
					 helpText: "Use of the Abstract Factory pattern makes it possible to interchange concrete implementations without changing the code that uses them, even at runtime. However, employment of this pattern, as with similar design patterns, may result in unnecessary complexity and extra work in the initial writing of code. Additionally, higher levels of separation and abstraction can result in systems that are more difficult to debug and maintain."),
			
			Question(question: ["Pick the design pattern that provides the following advantages: it encapsulates code for construction and representation and provides control over steps of construction process"],
					 image: "",
					 optionA: "Builder",
					 optionB: "Factory Method",
					 optionC: "Prototype",
					 optionD: "Singleton",
					 questionId: 2622,
					 helpText: "Advantages of the Builder pattern include: Allows you to vary a product's internal representation. Encapsulates code for construction and representation. Provides control over steps of construction process."),
			
			Question(question: ["Which creational design pattern is on the image?"],
					 image: "CreationalPatterns5",
					 optionA: "Singleton",
					 optionB: "Builder",
					 optionC: "Abstract Factory",
					 optionD: "State",
					 questionId: 2623,
					 helpText: "Singleton is a creational design pattern that lets you ensure that a class has only one instance, while providing a global access point to this instance."),
			
			Question(question: ["The creational design pattern that specifies which objects must be created at run-time?",
								"Which creational pattern determines how can dynamically loaded classes be instantiated?"],
					 image: "",
					 optionA: "Prototype",
					 optionB: "Bridge",
					 optionC: "State",
					 optionD: "Builder",
					 questionId: 2624,
					 helpText: "The Prototype design pattern solves problems like: How can objects be created so that which objects to create can be specified at run-time? How can dynamically loaded classes be instantiated?"),
			
			Question(question: ["The key idea of that pattern is to make the class itself responsible for controlling its instantiation (that it is instantiated only once)",
								"In which creational design pattern the hidden constructor (declared private) ensures that the class can never be instantiated from outside the class"],
					 image: "",
					 optionA: "Singleton",
					 optionB: "Abstract Factory",
					 optionC: "Bridge",
					 optionD: "Strategy",
					 questionId: 2625,
					 helpText: "The singleton design pattern describes how to solve such problems: Hide the constructor of the class. Define a public static method (getInstance()) that returns the sole instance of the class. The key idea in this pattern is to make the class itself responsible for controlling its instantiation (that it is instantiated only once). The hidden constructor (declared private) ensures that the class can never be instantiated from outside the class. The public static methods can be accessed easily by using the class name and method name (Singleton.getInstance())."),
			
			Question(question: ["In which creational design pattern you need to define the Director class?"],
					 image: "",
					 optionA: "Builder",
					 optionB: "Abstract Factory",
					 optionC: "Factory Method",
					 optionD: "",
					 questionId: 2626,
					 helpText: "Correct answer: Builder. Director class doesn't create and assemble objects directly. Instead, the Director refers to the Builder interface for building (creating and assembling) the parts of a complex object, which makes the Director independent of which concrete classes are instantiated (which representation is created)."),
			
			Question(question: ["Choose the creational pattern that encapsulates object creation in a separate object",
								"In this creational design pattern a class delegates object creation to a separate object instead of creating objects directly"],
					 image: "",
					 optionA: "Abstract Factory",
					 optionB: "Factory Method",
					 optionC: "Template Method",
					 optionD: "Facade",
					 questionId: 2627,
					 helpText: "The Abstract Factory design pattern describes how to solve such problems: Encapsulate object creation in a separate (factory) object. That is, define an interface (AbstractFactory) for creating objects, and implement the interface. A class delegates object creation to a factory object instead of creating objects directly. This makes a class independent of how its objects are created (which concrete classes are instantiated). A class can be configured with a factory object, which it uses to create objects, and even more, the factory object can be exchanged at run-time."),
			
			Question(question: ["One of the problems this design pattern helps to solve: How can the number of instances of a class be restricted?",
								"Which of the design patterns below solves problems like: How can a global variable be accessed?"],
					 image: "",
					 optionA: "Singleton",
					 optionB: "Prototype",
					 optionC: "Observer",
					 optionD: "",
					 questionId: 2628,
					 helpText: "The singleton design pattern solves problems like: How can it be ensured that a class has only one instance? How can the sole instance of a class be accessed easily? How can a class control its instantiation? How can the number of instances of a class be restricted? How can a global variable be accessed?"),
			
			Question(question: ["Which creational design pattern is on the image?"],
					 image: "CreationalPatterns1",
					 optionA: "Factory Method",
					 optionB: "Abstract Factory",
					 optionC: "Prototype",
					 optionD: "Singleton",
					 questionId: 2629,
					 helpText: "Factory Method. It provides an interface for creating objects in a superclass, but allows subclasses to alter the type of objects that will be created.")
		]
	}
}
