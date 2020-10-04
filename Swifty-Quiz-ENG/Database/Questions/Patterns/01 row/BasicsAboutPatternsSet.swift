
//  Created by Евгений Никитин on 13.07.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 27 - Вопросы (id) с 2501 по 2600

class BasicsAboutPatternsSet {
	static func getQuestions() -> [Question] {
		return [
			
			/// https://refactoring.guru/design-patterns/what-is-pattern
			
			Question(question: ["What is a design pattern?"],
					 image: "",
					 optionA: "Typical solutions",
					 optionB: "Library",
					 optionC: "Framework",
					 optionD: "Off-the-shelf function",
					 questionId: 2501,
					 helpText: "Design patterns are typical solutions to commonly occurring problems in software design. They are like pre-made blueprints that you can customize to solve a recurring design problem in your code."),
			
			Question(question: ["Can we just find a pattern and copy it into our program to solve the problem?",
								"You can just copy the pattern to your program to solve your problem. Is that true?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2502,
					 helpText: "You can’t just find a pattern and copy it into your program, the way you can with off-the-shelf functions or libraries. The pattern is not a specific piece of code, but a general concept for solving a particular problem. You can follow the pattern details and implement a solution that suits the realities of your own program."),
			
			/// Тут как-бы по вопросом сама формулировка вопроса, довольно логичная и легкая
			/// Но для информации это можно оставить (хелп текст полезный)
			
			Question(question: ["Is design patterns and algorithms the same?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2503,
					 helpText: "Patterns are often confused with algorithms, because both concepts describe typical solutions to some known problems. While an algorithm always defines a clear set of actions that can achieve some goal, a pattern is a more high-level description of a solution. The code of the same pattern applied to two different programs may be different."),
			
			/// 2503 Самописный (из методички ГБ)
			
			Question(question: ["Are design patterns tied to a specific programming language?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2504,
					 helpText: "Design patterns are not tied to a specific programming language. In some areas, some patterns are more widely used and the rest are almost not used, in other areas the picture may be different. Many modern programming languages have simplified syntactic constructs that make certain patterns easy to use. Swift has a lot of this syntactic sugar."),
			
			Question(question: ["Who first described the concept of patterns?",
								"The concept of patterns was first described by this person"],
					 image: "",
					 optionA: "Christopher Alexander",
					 optionB: "Muḥammad ibn Mūsā al-Khwārizmī",
					 optionC: "George Boole",
					 optionD: "John Backus",
					 questionId: 2505,
					 helpText: "The concept of patterns was first described by Christopher Alexander in A Pattern Language: Towns, Buildings, Construction. The book describes a “language” for designing the urban environment. The units of this language are patterns. They may describe how high windows should be, how many levels a building should have, how large green areas in a neighborhood are supposed to be, and so on."),
			
			/// Ниже три с википедии
			
			Question(question: ["What is the basis of Creational Patterns?"],
					 image: "",
					 optionA: "Objects creation",
					 optionB: "Classes and objects composition",
					 optionC: "Classes inheritance from each other",
					 optionD: "",
					 questionId: 2506,
					 helpText: "Creational software design patterns deal with object creation mechanisms. They try to instantiate objects in a manner suitable for the particular situation. Here are several creational design patterns: Factory Method, Abstract Factory, Builder, Singleton, Prototype."),
			
			Question(question: ["Behavioral patterns are about ..."],
					 image: "",
					 optionA: "Objects communication",
					 optionB: "Object creation mechanisms",
					 optionC: "Keeping structures flexible",
					 optionD: "",
					 questionId: 2507,
					 helpText: "Behavioral patterns are about identifying common communication patterns between objects and realize these patterns. Behavioral design patterns include: Chain of Responsibility, Template Method, Command, Iterator, Mediator, Memento, Observer, Strategy, State, Visitor."),
			
			Question(question: ["Structural patterns explain ..."],
					 image: "",
					 optionA: "Objects organizing",
					 optionB: "How to create efficient objects",
					 optionC: "How to keep structures flexible",
					 optionD: "",
					 questionId: 2508,
					 helpText: "Structural patterns are about organizing different classes and objects to form larger structures and provide new functionality. They aim to simplify the design by finding an easy way of realizing relationships between classes and objects. These are some structural architecture patterns: Adapter, Bridge, Facade, Decorator, Composite, Flyweight, Proxy."),
			
			Question(question: ["Are design patterns used in Apple's native libraries?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2509,
					 helpText: "Yes. Typical commonly used patterns when building iOS applications are those that Apple advocates in their Cocoa, Cocoa Touch, Objective-C, and Swift documentation. These are the patterns that every iOS developer learns. Apple refers to them as “core competencies” design patterns. They include MVC, Singleton, Delegate, and Observer."),
			
			/// Набросил этот вопрос просто ради теории. Сами вопросы логичные и наверное немного глупые, но инфы полезная
			/// Если найдешь способ придать им побольше смысла - велкам )
			
			Question(question: ["Can design patterns speed up the development process?",
								"Does effective software design requires considering issues that may not become visible until later in the implementation?",
								"Can freshly written code have hidden subtle issues that take time to be detected?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2510,
					 helpText: "Design patterns can speed up the development process by providing tested, proven development paradigms. Effective software design requires considering issues that may not become visible until later in the implementation. Freshly written code can often have hidden subtle issues that take time to be detected, issues that sometimes can cause major problems down the road. Reusing design patterns helps to prevent such subtle issues, and it also improves code readability for coders and architects who are familiar with the patterns."),
			
			
			/// Ниже я создал пачку новых вопросов отталкиваясь от википедии (по паттернам, которые используются в свифте)
			/// Это просто легкие и быстрые вопросы чтобы укрепить эту тему
			/// Ты можешь сильно не чекать, потому что взято из английской версии википедии, сам ничего не буду придумывать.
			/// Можешь просто прочитать чтобы увидеть какие-то явные косяки (типа я не убрал цитирование википедное и так далее)
			/// https://en.wikipedia.org/wiki/Software_design_pattern
			
			/// Можешь проверять очень бегло - на предмет "наличия смысла" в вопросе
			/// В большинстве своем здесь все четко, и дальше в подтемах вопросы будут повторяться (или может я даже скопирую их прям в лоб)
			
			
			Question(question: ["This design pattern provide an interface for creating families of related or dependent objects without specifying their concrete classes"],
					 image: "",
					 optionA: "Abstract factory",
					 optionB: "Builder",
					 optionC: "Factory method",
					 optionD: "",
					 questionId: 2510,
					 helpText: "The abstract factory pattern provides a way to encapsulate a group of individual factories that have a common theme without specifying their concrete classes. In normal usage, the client software creates a concrete implementation of the abstract factory and then uses the generic interface of the factory to create the concrete objects that are part of the theme. The client does not know (or care) which concrete objects it gets from each of these internal factories, since it uses only the generic interfaces of their products. This pattern separates the details of implementation of a set of objects from their general usage and relies on object composition, as object creation is implemented in methods exposed in the factory interface."),
			
			Question(question: ["This design pattern convert the interface of a class into another interface clients expect",
								"This design pattern lets classes work together that could not otherwise because of incompatible interfaces"],
					 image: "",
					 optionA: "Adapter",
					 optionB: "Bridge",
					 optionC: "Composite",
					 optionD: "",
					 questionId: 2511,
					 helpText: "In software engineering, the adapter pattern is a software design pattern (also known as wrapper, an alternative naming shared with the decorator pattern) that allows the interface of an existing class to be used as another interface. It is often used to make existing classes work with others without modifying their source code."),
			
			Question(question: ["This design pattern avoid coupling the sender of a request to its receiver by giving more than one object a chance to handle the request"],
					 image: "",
					 optionA: "Chain of responsibility",
					 optionB: "Command",
					 optionC: "Interpreter",
					 optionD: "",
					 questionId: 2512,
					 helpText: "In object-oriented design, the chain-of-responsibility pattern is a design pattern consisting of a source of command objects and a series of processing objects. Each processing object contains logic that defines the types of command objects that it can handle; the rest are passed to the next processing object in the chain. A mechanism also exists for adding new processing objects to the end of this chain. Thus, the chain of responsibility is an object oriented version of the \"if ... else if ... else if ....... else ... endif\" idiom, with the benefit that the condition–action blocks can be dynamically rearranged and reconfigured at runtime."),
			
			Question(question: ["The intent of this design pattern is to separate the construction of a complex object from its representation"],
					 image: "",
					 optionA: "Builder",
					 optionB: "Abstract factory",
					 optionC: "Prototype",
					 optionD: "",
					 questionId: 2513,
					 helpText: "The builder pattern is a design pattern designed to provide a flexible solution to various object creation problems in object-oriented programming. The intent of the Builder design pattern is to separate the construction of a complex object from its representation. It is one of the Gang of Four design patterns."),
			
			Question(question: ["This pattern decouple an abstraction from its implementation allowing the two to vary independently"],
					 image: "",
					 optionA: "Bridge",
					 optionB: "Composite",
					 optionC: "Decorator",
					 optionD: "",
					 questionId: 2514,
					 helpText: "The bridge pattern is a design pattern used in software engineering that is meant to \"decouple an abstraction from its implementation so that the two can vary independently\", introduced by the Gang of Four. The bridge uses encapsulation, aggregation, and can use inheritance to separate responsibilities into different classes. When a class varies often, the features of object-oriented programming become very useful because changes to a program's code can be made easily with minimal prior knowledge about the program. The bridge pattern is useful when both the class and what it does vary often. The class itself can be thought of as the abstraction and what the class can do as the implementation. The bridge pattern can also be thought of as two layers of abstraction."),
			
			Question(question: ["This pattern encapsulate a request as an object, thereby allowing for the parameterization of clients with different requests, and the queuing or logging of requests"],
					 image: "",
					 optionA: "Command",
					 optionB: "Interpreter",
					 optionC: "Iterator",
					 optionD: "Mediator",
					 questionId: 2515,
					 helpText: "In object-oriented programming, the command pattern is a behavioral design pattern in which an object is used to encapsulate all information needed to perform an action or trigger an event at a later time. This information includes the method name, the object that owns the method and values for the method parameters."),
			
			/// Вот здесь будет комбинированная вторая формулировка, чекни на всякий
			
			Question(question: ["This design pattern define an interface for creating a single object, but let subclasses decide which class to instantiate",
								"This pattern define an interface for creating a single object and lets a class defer instantiation to subclasses"],
					 image: "",
					 optionA: "Factory method",
					 optionB: "Prototype",
					 optionC: "Singleton",
					 optionD: "",
					 questionId: 2516,
					 helpText: "In class-based programming, the factory method pattern is a creational pattern that uses factory methods to deal with the problem of creating objects without having to specify the exact class of the object that will be created. This is done by creating objects by calling a factory method—either specified in an interface and implemented by child classes, or implemented in a base class and optionally overridden by derived classes—rather than by calling a constructor."),
			
			Question(question: ["This pattern compose objects into tree structures to represent part-whole hierarchies",
								"This pattern lets clients treat individual objects and compositions of objects uniformly"],
					 image: "",
					 optionA: "Composite",
					 optionB: "Bridge",
					 optionC: "Decorator",
					 optionD: "Facade",
					 questionId: 2517,
					 helpText: "The composite pattern describes a group of objects that are treated the same way as a single instance of the same type of object. The intent of a composite is to \"compose\" objects into tree structures to represent part-whole hierarchies. Implementing the composite pattern lets clients treat individual objects and compositions uniformly. The Composite design pattern is one of the twenty-three well-known GoF design patterns that describe how to solve recurring design problems to design flexible and reusable object-oriented software, that is, objects that are easier to implement, change, test, and reuse."),
			
			Question(question: ["This pattern provide a way to access the elements of an aggregate object sequentially without exposing its underlying representation"],
					 image: "",
					 optionA: "Iterator",
					 optionB: "Mediator",
					 optionC: "Memento",
					 optionD: "",
					 questionId: 2518,
					 helpText: "In object-oriented programming, the iterator pattern is a design pattern in which an iterator is used to traverse a container and access the container's elements. The iterator pattern decouples algorithms from containers; in some cases, algorithms are necessarily container-specific and thus cannot be decoupled. For example, the hypothetical algorithm SearchForElement can be implemented generally using a specified type of iterator rather than implementing it as a container-specific algorithm. This allows SearchForElement to be used on any container that supports the required type of iterator."),
			
			Question(question: ["This pattern specify the kinds of objects to create using a prototypical instance, and create new objects from the 'skeleton' of an existing object"],
					 image: "",
					 optionA: "Prototype",
					 optionB: "Singleton",
					 optionC: "Factory method",
					 optionD: "Builder",
					 questionId: 2519,
					 helpText: "The prototype pattern is a creational design pattern in software development. It is used when the type of objects to create is determined by a prototypical instance, which is cloned to produce new objects. This pattern is used to: avoid subclasses of an object creator in the client application, like the factory method pattern does, avoid the inherent cost of creating a new object in the standard way (e.g., using the 'new' keyword) when it is prohibitively expensive for a given application."),
			
			Question(question: ["This design pattern attach additional responsibilities to an object dynamically keeping the same interface",
								"This design pattern provide a flexible alternative to subclassing for extending functionality"],
					 image: "",
					 optionA: "Decorator",
					 optionB: "Composite",
					 optionC: "Facade",
					 optionD: "",
					 questionId: 2520,
					 helpText: "In object-oriented programming, the decorator pattern is a design pattern that allows behavior to be added to an individual object, dynamically, without affecting the behavior of other objects from the same class. The decorator pattern is often useful for adhering to the Single Responsibility Principle, as it allows functionality to be divided between classes with unique areas of concern. The decorator pattern is structurally nearly identical to the chain of responsibility pattern, the difference being that in a chain of responsibility, exactly one of the classes handles the request, while for the decorator, all classes handle the request."),
			
			Question(question: ["This pattern define an object that encapsulates how a set of objects interact",
								"This pattern promotes loose coupling by keeping objects from referring to each other explicitly, and it allows their interaction to vary independently"],
					 image: "",
					 optionA: "Mediator",
					 optionB: "Iterator",
					 optionC: "Memento",
					 optionD: "State",
					 questionId: 2521,
					 helpText: "In object-oriented programming, programs often consist of many classes. Business logic and computation are distributed among these classes. However, as more classes are added to a program, especially during maintenance and/or refactoring, the problem of communication between these classes may become more complex. This makes the program harder to read and maintain. Furthermore, it can become difficult to change the program, since any change may affect code in several other classes. With the mediator pattern, communication between objects is encapsulated within a mediator object. Objects no longer communicate directly with each other, but instead communicate through the mediator. This reduces the dependencies between communicating objects, thereby reducing coupling."),
			
			Question(question: ["This pattern ensure a class has only one instance, and provide a global point of access to it"],
					 image: "",
					 optionA: "Singleton",
					 optionB: "Proxy",
					 optionC: "Flyweight",
					 optionD: "",
					 questionId: 2522,
					 helpText: "singleton pattern is a software design pattern that restricts the instantiation of a class to one \"single\" instance. This is useful when exactly one object is needed to coordinate actions across the system. The term comes from the mathematical concept of a singleton. Critics consider the singleton to be an anti-pattern in that it is frequently used in scenarios where it is not beneficial, introduces unnecessary restrictions in situations where a sole instance of a class is not actually required, and introduces global state into an application."),
			
			Question(question: ["This pattern provide a unified interface to a set of interfaces in a subsystem",
								"This pattern defines a higher-level interface that makes the subsystem easier to use"],
					 image: "",
					 optionA: "Facade",
					 optionB: "Flyweight",
					 optionC: "Proxy",
					 optionD: "Memento",
					 questionId: 2523,
					 helpText: "The facade pattern (also spelled façade) is a software-design pattern commonly used in object-oriented programming. Analogous to a facade in architecture, a facade is an object that serves as a front-facing interface masking more complex underlying or structural code. A facade can: improve the readability and usability of a software library by masking interaction with more complex components behind a single (and often simplified) API, provide a context-specific interface to more generic functionality (complete with context-specific input validation), serve as a launching point for a broader refactor of monolithic or tightly-coupled systems in favor of more loosely-coupled code. Developers often use the facade design pattern when a system is very complex or difficult to understand because the system has many interdependent classes or because its source code is unavailable."),
			
			Question(question: ["This pattern capture and externalize an object's internal state allowing the object to be restored to this state later without violating encapsulation"],
					 image: "",
					 optionA: "Memento",
					 optionB: "State",
					 optionC: "Strategy",
					 optionD: "Template method",
					 questionId: 2524,
					 helpText: "The memento pattern is a software design pattern that provides the ability to restore an object to its previous state (undo via rollback). The memento pattern is implemented with three objects: the originator, a caretaker and a memento. The originator is some object that has an internal state. The caretaker is going to do something to the originator, but wants to be able to undo the change. The caretaker first asks the originator for a memento object. Then it does whatever operation (or sequence of operations) it was going to do. To roll back to the state before the operations, it returns the memento object to the originator. The memento object itself is an opaque object (one which the caretaker cannot, or should not, change). When using this pattern, care should be taken if the originator may change other objects or resources - the memento pattern operates on a single object."),
			
			Question(question: ["This pattern use sharing to support large numbers of similar objects efficiently."],
					 image: "",
					 optionA: "Flyweight",
					 optionB: "Composite",
					 optionC: "Adapter",
					 optionD: "Singleton",
					 questionId: 2525,
					 helpText: "In computer programming, flyweight is a software design pattern. A flyweight is an object that minimizes memory usage by sharing as much data as possible with other similar objects; it is a way to use objects in large numbers when a simple repeated representation would use an unacceptable amount of memory. Often some parts of the object state can be shared, and it is common practice to hold them in external data structures and pass them to the objects temporarily when they are used."),
			
			Question(question: ["This pattern define a one-to-many dependency between objects where a state change in one object results in all its dependents being notified and updated automatically"],
					 image: "",
					 optionA: "Observer",
					 optionB: "Visitor",
					 optionC: "Facade",
					 optionD: "",
					 questionId: 2526,
					 helpText: "The observer pattern is a software design pattern in which an object, called the subject, maintains a list of its dependents, called observers, and notifies them automatically of any state changes, usually by calling one of their methods. It is mainly used to implement distributed event handling systems. The Observer pattern addresses the following problems: A one-to-many dependency between objects should be defined without making the objects tightly coupled. It should be ensured that when one object changes state an open-ended number of dependent objects are updated automatically. It should be possible that one object can notify an open-ended number of other objects."),
			
			Question(question: ["This pattern provide a surrogate or placeholder for another object to control access to it."],
					 image: "",
					 optionA: "Proxy",
					 optionB: "Facade",
					 optionC: "Decorator",
					 optionD: "",
					 questionId: 2527,
					 helpText: "In computer programming, the proxy pattern is a software design pattern. A proxy, in its most general form, is a class functioning as an interface to something else. The proxy could interface to anything: a network connection, a large object in memory, a file, or some other resource that is expensive or impossible to duplicate. In short, a proxy is a wrapper or agent object that is being called by the client to access the real serving object behind the scenes. Use of the proxy can simply be forwarding to the real object, or can provide additional logic. In the proxy, extra functionality can be provided, for example caching when operations on the real object are resource intensive, or checking preconditions before operations on the real object are invoked. For the client, usage of a proxy object is similar to using the real object, because both implement the same interface."),
			
			Question(question: ["This pattern allow an object to alter its behavior when its internal state changes, the object will appear to change its class"],
					 image: "",
					 optionA: "State",
					 optionB: "Strategy",
					 optionC: "Template method",
					 optionD: "",
					 questionId: 2528,
					 helpText: "The state pattern is a behavioral software design pattern that allows an object to alter its behavior when its internal state changes. This pattern is close to the concept of finite-state machines. The state pattern can be interpreted as a strategy pattern, which is able to switch a strategy through invocations of methods defined in the pattern's interface. The state pattern is used in computer programming to encapsulate varying behavior for the same object, based on its internal state. This can be a cleaner way for an object to change its behavior at runtime without resorting to conditional statements and thus improve maintainability."),
			
			/// Вторая формулировка составная, чекни плиз
			
			Question(question: ["This pattern define a family of algorithms, encapsulate each one, and make them interchangeable",
								"This pattern define a family of algorithms, encapsulate each one, and make them interchangeable and then lets the algorithm vary independently from clients that use it"],
					 image: "",
					 optionA: "Strategy",
					 optionB: "Template method",
					 optionC: "Visitor",
					 optionD: "",
					 questionId: 2529,
					 helpText: "In computer programming, the strategy pattern (also known as the policy pattern) is a behavioral software design pattern that enables selecting an algorithm at runtime. Instead of implementing a single algorithm directly, code receives run-time instructions as to which in a family of algorithms to use. Strategy lets the algorithm vary independently from clients that use it. Strategy is one of the patterns included in the influential book Design Patterns by Gamma et al. that popularized the concept of using design patterns to describe how to design flexible and reusable object-oriented software. Deferring the decision about which algorithm to use until runtime allows the calling code to be more flexible and reusable."),
			
			Question(question: ["This pattern define the skeleton of an algorithm in an operation, deferring some steps to subclasses",
								"This pattern lets subclasses redefine certain steps of an algorithm without changing the algorithm's structure"],
					 image: "",
					 optionA: "Template method",
					 optionB: "Command",
					 optionC: "Chain of responsibility",
					 optionD: "Iterator",
					 questionId: 2530,
					 helpText: "In object-oriented programming, the template method is one of the behavioral design patterns identified by Gamma et al. in the book Design Patterns. The template method is a method in a superclass, usually an abstract superclass, and defines the skeleton of an operation in terms of a number of high-level steps. These steps are themselves implemented by additional helper methods in the same class as the template method. The helper methods may be either abstract methods, for which case subclasses are required to provide concrete implementations, or hook methods, which have empty bodies in the superclass. Subclasses can (but are not required to) customize the operation by overriding the hook methods. The intent of the template method is to define the overall structure of the operation, while allowing subclasses to refine, or redefine, certain steps."),
			
			Question(question: ["This pattern represent an operation to be performed on the elements of an object structure and lets a new operation be defined without changing the classes of the elements on which it operates"],
					 image: "",
					 optionA: "Visitor",
					 optionB: "Mediator",
					 optionC: "Facade",
					 optionD: "Proxy",
					 questionId: 2531,
					 helpText: "In object-oriented programming and software engineering, the visitor design pattern is a way of separating an algorithm from an object structure on which it operates. A practical result of this separation is the ability to add new operations to existing object structures without modifying the structures. It is one way to follow the open/closed principle. In essence, the visitor allows adding new virtual functions to a family of classes, without modifying the classes. Instead, a visitor class is created that implements all of the appropriate specializations of the virtual function. The visitor takes the instance reference as input, and implements the goal through double dispatch.")
		]
	}
}
