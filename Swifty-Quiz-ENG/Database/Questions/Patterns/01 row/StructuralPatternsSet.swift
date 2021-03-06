
//  Created by Евгений Никитин on 25.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 29 - Вопросы (id) с 2701 по 2800

class StructuralPatternsSet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: ["Structural design pattern that allows the interface of an existing class to be used as another interface",
								"Structural design pattern that often used to make existing classes work with others without modifying their source code"],
					 image: "",
					 optionA: "Adapter",
					 optionB: "Bridge",
					 optionC: "Composite",
					 optionD: "",
					 questionId: 2701,
					 helpText: "The adapter pattern is a structural design pattern (also known as wrapper, an alternative naming shared with the decorator pattern) that allows the interface of an existing class to be used as another interface. It is often used to make existing classes work with others without modifying their source code."),
			
			Question(question: ["Structural design pattern that lets you provide a substitute or placeholder for another object",
								"Structural design pattern that controls access to the original object, allowing you to perform something either before or after the request gets through to the original object"],
					 image: "",
					 optionA: "Proxy",
					 optionB: "Flyweight",
					 optionC: "Mediator",
					 optionD: "",
					 questionId: 2702,
					 helpText: "Proxy is a structural design pattern that lets you provide a substitute or placeholder for another object. A proxy controls access to the original object, allowing you to perform something either before or after the request gets through to the original object."),
			
			Question(question: ["Which structural pattern is on the image?"],
					 image: "StructuralPatterns7",
					 optionA: "Proxy",
					 optionB: "State",
					 optionC: "Facade",
					 optionD: "",
					 questionId: 2703,
					 helpText: "Proxy is a structural design pattern that lets you provide a substitute or placeholder for another object. A proxy controls access to the original object, allowing you to perform something either before or after the request gets through to the original object."),
			
			Question(question: ["Pick the structural pattern shown on the image"],
					 image: "StructuralPatterns5",
					 optionA: "Facade",
					 optionB: "Decorator",
					 optionC: "Composite",
					 optionD: "Flyweight",
					 questionId: 2704,
					 helpText: "Facade is a structural design pattern that provides a simplified interface to a library, a framework, or any other complex set of classes."),
			
			Question(question: ["This structural design pattern lets you split a large class or a set of closely related classes into two separate hierarchies—abstraction and implementation—which can be developed independently of each other"],
					 image: "",
					 optionA: "Bridge",
					 optionB: "Composite",
					 optionC: "Decorator",
					 optionD: "",
					 questionId: 2705,
					 helpText: "Bridge is a structural design pattern that lets you split a large class or a set of closely related classes into two separate hierarchies—abstraction and implementation—which can be developed independently of each other."),
			
			Question(question: ["Which structural pattern is on this picture?"],
					 image: "StructuralPatterns6",
					 optionA: "Flyweight",
					 optionB: "Decorator",
					 optionC: "Facade",
					 optionD: "",
					 questionId: 2706,
					 helpText: "Flyweight is a structural design pattern that lets you fit more objects into the available amount of RAM by sharing common parts of state between multiple objects instead of keeping all of the data in each object."),
			
			Question(question: ["Use this structural pattern when you need to extend a class in several orthogonal (independent) dimensions"],
					 image: "",
					 optionA: "Bridge",
					 optionB: "Proxy",
					 optionC: "Mediator",
					 optionD: "",
					 questionId: 2707,
					 helpText: "Use Bridge pattern when you need to extend a class in several orthogonal (independent) dimensions. The Bridge suggests that you extract a separate class hierarchy for each of the dimensions. The original class delegates the related work to the objects belonging to those hierarchies instead of doing everything on its own."),
			
			Question(question: ["The structural pattern that describes a group of objects treated the same way as a single instance of the same type of object",
								"The intent of this structural pattern is to \"compose\" objects into tree structures to represent part-whole hierarchies",
								"Implementing this structural pattern lets clients treat individual objects and compositions uniformly"],
					 image: "",
					 optionA: "Composite",
					 optionB: "Adapter",
					 optionC: "Bridge",
					 optionD: "",
					 questionId: 2708,
					 helpText: "In software engineering, the composite pattern is a partitioning design pattern. The composite pattern describes a group of objects that are treated the same way as a single instance of the same type of object. The intent of a composite is to \"compose\" objects into tree structures to represent part-whole hierarchies. Implementing the composite pattern lets clients treat individual objects and compositions uniformly."),
			
			Question(question: ["The main idea of what pattern is to allow two incompatible interfaces to work together?"],
					 image: "",
					 optionA: "Adapter",
					 optionB: "Bridge",
					 optionC: "Facade",
					 optionD: "Proxy",
					 questionId: 2709,
					 helpText: "An adapter allows two incompatible interfaces to work together. This is the real-world definition for an adapter. Interfaces may be incompatible, but the inner functionality should suit the need. The adapter design pattern allows otherwise incompatible classes to work together by converting the interface of one class into an interface expected by the clients."),
			
			Question(question: ["Which of these structural patterns is on the image?"],
					 image: "StructuralPatterns3",
					 optionA: "Composite",
					 optionB: "Flyweight",
					 optionC: "Proxy",
					 optionD: "",
					 questionId: 2710,
					 helpText: "Composite is a structural design pattern that lets you compose objects into tree structures and then work with these structures as if they were individual objects."),
			
			Question(question: ["This structural pattern define a unified Component interface for both part objects and whole objects",
								"From the options below choose the structural pattern that has objects with the possibility of forwarding the request to their child components recursively downwards the tree structure"],
					 image: "",
					 optionA: "Composite",
					 optionB: "Adapter",
					 optionC: "Bridge",
					 optionD: "",
					 questionId: 2711,
					 helpText: "What solution does the Composite design pattern describe: Define a unified Component interface for both part (Leaf) objects and whole (Composite) objects. Individual Leaf objects implement the Component interface directly, and Composite objects forward requests to their child components. This enables clients to work through the Component interface to treat Leaf and Composite objects uniformly: Leaf objects perform a request directly, and Composite objects forward the request to their child components recursively downwards the tree structure. This makes client classes easier to implement, change, test, and reuse."),
			
			Question(question: ["Structural design pattern that lets you attach new behaviors to objects by placing these objects inside special wrapper objects that contain the behaviors"],
					 image: "",
					 optionA: "Decorator",
					 optionB: "Facade",
					 optionC: "Flyweight",
					 optionD: "",
					 questionId: 2712,
					 helpText: "Decorator is a structural design pattern that lets you attach new behaviors to objects by placing these objects inside special wrapper objects that contain the behaviors."),
			
			Question(question: ["The adapter pattern works through a separate adapter that adapts the interface of an (already existing) class without changing it. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2713,
					 helpText: "The key idea in Adapter pattern is to work through a separate adapter that adapts the interface of an (already existing) class without changing it. Clients don't know whether they work with a target class directly or through an adapter with a class that does not have the target interface."),
			
			Question(question: ["Choose the structural pattern that enables you to use some existing class, whose interface isn’t compatible with the rest of your code",
								"This structural pattern lets you create a middle-layer class that serves as a translator between your code and a legacy class",
								"Which structural pattern lets you create a middle-layer class that serves as a translator between your code and a 3rd-party class?",
								"Structural pattern that lets you create a middle-layer class that serves as a translator between your code and any other class with a weird interface"],
					 image: "",
					 optionA: "Adapter",
					 optionB: "Bridge",
					 optionC: "Facade",
					 optionD: "Proxy",
					 questionId: 2714,
					 helpText: "Use the Adapter class when you want to use some existing class, but its interface isn’t compatible with the rest of your code. The Adapter pattern lets you create a middle-layer class that serves as a translator between your code and a legacy class, a 3rd-party class or any other class with a weird interface."),
			
			Question(question: ["Does Decorator pattern allow you to extend the functionality of an object dynamically at run-time?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2715,
					 helpText: "Yes. The decorator pattern can be used to extend (decorate) the functionality of a certain object statically, or in some cases at run-time, independently of other instances of the same class, provided some groundwork is done at design time. This is achieved by designing a new Decorator class that wraps the original class."),
			
			Question(question: ["Can we stack multiple decorators on top of each other, each time adding a new functionality to the overridden methods?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2716,
					 helpText: "The Decorator pattern is designed so that multiple decorators can be stacked on top of each other, each time adding a new functionality to the overridden method(s). The decorator pattern is an alternative to subclassing. Subclassing adds behavior at compile time, and the change affects all instances of the original class; decorating can provide new behavior at run-time for selected objects."),
			
			Question(question: ["Which structural pattern has the Component and Leaf elements?"],
					 image: "",
					 optionA: "Composite",
					 optionB: "Flyweight",
					 optionC: "Facade",
					 optionD: "",
					 questionId: 2717,
					 helpText: "Correct answer: Composite. The Component interface describes operations that are common to both simple and complex elements of the tree. The Leaf is a basic element of a tree that doesn’t have sub-elements. Usually, leaf components end up doing most of the real work, since they don’t have anyone to delegate the work to."),
			
			Question(question: ["Use this structural pattern when you need to be able to assign extra behaviors to objects at runtime without breaking the code that uses these objects"],
					 image: "",
					 optionA: "Decorator",
					 optionB: "Adapter",
					 optionC: "",
					 optionD: "",
					 questionId: 2718,
					 helpText: "Use the Decorator pattern when you need to be able to assign extra behaviors to objects at runtime without breaking the code that uses these objects. The Decorator lets you structure your business logic into layers, create a decorator for each layer and compose objects with various combinations of this logic at runtime. The client code can treat all these objects in the same way, since they all follow a common interface."),
			
			Question(question: ["Structural design pattern that provides a simplified interface to a library, a framework, or any other complex set of classes"],
					 image: "",
					 optionA: "Facade",
					 optionB: "Decorator",
					 optionC: "Adapter",
					 optionD: "",
					 questionId: 2719,
					 helpText: "Facade is a structural design pattern that provides a simplified interface to a library, a framework, or any other complex set of classes."),
			
			Question(question: ["Structural design pattern that allows behavior to be added to an individual object, dynamically, without affecting the behavior of other objects from the same class",
								"Which design pattern is often used for adhering to the Single Responsibility Principle, as it allows functionality to be divided between classes with unique areas of concern?"],
					 image: "",
					 optionA: "Decorator",
					 optionB: "Facade",
					 optionC: "Chain of responsibility",
					 optionD: "",
					 questionId: 2720,
					 helpText: "Decorator pattern is a design pattern that allows behavior to be added to an individual object, dynamically, without affecting the behavior of other objects from the same class. The decorator pattern is often useful for adhering to the Single Responsibility Principle, as it allows functionality to be divided between classes with unique areas of concern. The decorator pattern is structurally nearly identical to the chain of responsibility pattern, the difference being that in a chain of responsibility, exactly one of the classes handles the request, while for the decorator, all classes handle the request."),
			
			Question(question: ["The key idea of that structural pattern is to minimize memory usage by sharing as much data as possible with other similar objects"],
					 image: "",
					 optionA: "Flyweight",
					 optionB: "Composite",
					 optionC: "Memento",
					 optionD: "",
					 questionId: 2721,
					 helpText: "A flyweight is an object that minimizes memory usage by sharing as much data as possible with other similar objects; it is a way to use objects in large numbers when a simple repeated representation would use an unacceptable amount of memory. Often some parts of the object state can be shared, and it is common practice to hold them in external data structures and pass them to the objects temporarily when they are used."),
			
			Question(question: ["Which pattern provides a front-facing interface masking more complex underlying or structural code"],
					 image: "",
					 optionA: "Facade",
					 optionB: "Decorator",
					 optionC: "Adapter",
					 optionD: "",
					 questionId: 2722,
					 helpText: "Analogous to a facade in architecture, a facade is an object that serves as a front-facing interface masking more complex underlying or structural code."),
			
			Question(question: ["Use this structural pattern when you have to implement a tree-like object structure",
								"This structural pattern provides you with two basic element types that share a common interface: simple leaves and complex containers"],
					 image: "",
					 optionA: "Composite",
					 optionB: "Flyweight",
					 optionC: "Facade",
					 optionD: "",
					 questionId: 2723,
					 helpText: "Use the Composite pattern when you have to implement a tree-like object structure. The Composite pattern provides you with two basic element types that share a common interface: simple leaves and complex containers. A container can be composed of both leaves and other containers. This lets you construct a nested recursive object structure that resembles a tree."),
			
			Question(question: ["This structural pattern allows you create object that is a wrapper or agent object that is being called by the client to access the real serving object behind the scenes",
								"The structural pattern that can be configured to interface to anything: a network connection, a large object in memory, a file, or some other resource that is expensive or impossible to duplicate"],
					 image: "",
					 optionA: "Proxy",
					 optionB: "Flyweight",
					 optionC: "Visitor",
					 optionD: "",
					 questionId: 2724,
					 helpText: "The proxy could interface to anything: a network connection, a large object in memory, a file, or some other resource that is expensive or impossible to duplicate. In short, a proxy is a wrapper or agent object that is being called by the client to access the real serving object behind the scenes. Use of the proxy can simply be forwarding to the real object, or can provide additional logic. In the proxy, extra functionality can be provided, for example caching when operations on the real object are resource intensive, or checking preconditions before operations on the real object are invoked. For the client, usage of a proxy object is similar to using the real object, because both implement the same interface."),
			
			Question(question: ["Use this structural pattern when an abstraction and its implementation should be defined and extended independently from each other",
								"Use this structural pattern when a compile-time binding between an abstraction and its implementation should be avoided so that an implementation can be selected at run-time"],
					 image: "",
					 optionA: "Bridge",
					 optionB: "Composite",
					 optionC: "Decorator",
					 optionD: "",
					 questionId: 2725,
					 helpText: "What problems can the Bridge design pattern solve: An abstraction and its implementation should be defined and extended independently from each other. A compile-time binding between an abstraction and its implementation should be avoided so that an implementation can be selected at run-time. When using subclassing, different subclasses implement an abstract class in different ways. But an implementation is bound to the abstraction at compile-time and cannot be changed at run-time."),
			
			Question(question: ["Can we use Proxy pattern to delay the object’s initialization to a time when it’s really needed (create a virtual proxy)?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2726,
					 helpText: "Yes, it’s called lazy initialization or a virtual proxy. This is when you have a heavyweight service object that wastes system resources by being always up, even though you only need it from time to time. Instead of creating the object when the app launches, you can delay the object’s initialization to a time when it’s really needed."),
			
			Question(question: ["The structural pattern that can be implemented when you need to pass the request to the service object only if the client’s credentials match some criteria"],
					 image: "",
					 optionA: "Proxy",
					 optionB: "Bridge",
					 optionC: "Facade",
					 optionD: "",
					 questionId: 2727,
					 helpText: "Access control (protection proxy). This is when you want only specific clients to be able to use the service object; for instance, when your objects are crucial parts of an operating system and clients are various launched applications (including malicious ones). The proxy can pass the request to the service object only if the client’s credentials match some criteria."),
			
			Question(question: ["Which structural pattern will help you out when a class can't be reused only because its interface doesn't conform to the interface clients require?"],
					 image: "",
					 optionA: "Adapter",
					 optionB: "Proxy",
					 optionC: "Flyweight",
					 optionD: "",
					 questionId: 2728,
					 helpText: "Often an (already existing) class can't be reused only because its interface doesn't conform to the interface clients require. The adapter design pattern describes how to solve such problems: Define a separate adapter class that converts the (incompatible) interface of a class (adaptee) into another interface (target) clients require. Work through an adapter to work with (reuse) classes that do not have the required interface."),
			
			Question(question: ["The structural pattern used when an easier or simpler interface to an underlying object is desired"],
					 image: "",
					 optionA: "Facade",
					 optionB: "Adapter",
					 optionC: "Bridge",
					 optionD: "Decorator",
					 questionId: 2729,
					 helpText: "A Facade is used when an easier or simpler interface to an underlying object is desired."),
			
			Question(question: ["One of the most useful design patternsl when an application needs to spawn a huge number of similar objects",
								"Which structural design pattern is most useful when the objects contain duplicate states which can be extracted and shared between multiple objects"],
					 image: "",
					 optionA: "Flyweight",
					 optionB: "Singleton",
					 optionC: "State",
					 optionD: "",
					 questionId: 2730,
					 helpText: "Use the Flyweight pattern only when your program must support a huge number of objects which barely fit into available RAM. The benefit of applying the pattern depends heavily on how and where it’s used. It’s most useful when: an application needs to spawn a huge number of similar objects, this drains all available RAM on a target device, the objects contain duplicate states which can be extracted and shared between multiple objects."),
			
			Question(question: ["Pick the structural pattern you can use when the access to an object should be controlled",
								"Choose the structural pattern you could use when additional functionality should be provided when accessing an object"],
					 image: "",
					 optionA: "Proxy",
					 optionB: "Flyweight",
					 optionC: "Facade",
					 optionD: "Bridge",
					 questionId: 2731,
					 helpText: "What problems can the Proxy design pattern solve: The access to an object should be controlled. Additional functionality should be provided when accessing an object. When accessing sensitive objects, for example, it should be possible to check that clients have the needed access rights."),
			
			Question(question: ["Can we use Facade as a singleton?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2732,
					 helpText: "Yes, we can make a singleton Facade, but try not to. It is usually implemented because it's easier to call, but it gives several disadvantages: Code coupling, Not-concurrent safe by default, Not Testable."),
			
			Question(question: ["Use this structural pattern when you want to divide and organize a monolithic class that has several variants of some functionality (for example, if the class can work with various database servers)"],
					 image: "",
					 optionA: "Bridge",
					 optionB: "Decorator",
					 optionC: "Facade",
					 optionD: "Factory Method",
					 questionId: 2733,
					 helpText: "Use the Bridge pattern when you want to divide and organize a monolithic class that has several variants of some functionality (for example, if the class can work with various database servers). The bigger a class becomes, the harder it is to figure out how it works, and the longer it takes to make a change. The changes made to one of the variations of functionality may require making changes across the whole class, which often results in making errors or not addressing some critical side effects. The Bridge pattern lets you split the monolithic class into several class hierarchies. After this, you can change the classes in each hierarchy independently of the classes in the others. This approach simplifies code maintenance and minimizes the risk of breaking existing code."),
			
			Question(question: ["Which structural pattern is on the image?"],
					 image: "StructuralPatterns1",
					 optionA: "Adapter",
					 optionB: "Composite",
					 optionC: "Bridge",
					 optionD: "Decorator",
					 questionId: 2734,
					 helpText: "Adapter is a structural design pattern that allows objects with incompatible interfaces to collaborate."),
			
			Question(question: ["The key concept of this structural pattern is that you can manipulate a single instance of the object just as you would manipulate a group of them",
								"The structural pattern that should be used when clients ignore the difference between compositions of objects and individual objects"],
					 image: "",
					 optionA: "Composite",
					 optionB: "Flyweight",
					 optionC: "Facade",
					 optionD: "Proxy",
					 questionId: 2735,
					 helpText: "When dealing with Tree-structured data, programmers often have to discriminate between a leaf-node and a branch. This makes code more complex, and therefore, more error prone. The solution is an interface that allows treating complex and primitive objects uniformly. In object-oriented programming, a composite is an object designed as a composition of one-or-more similar objects, all exhibiting similar functionality. This is known as a \"has-a\" relationship between objects. The key concept is that you can manipulate a single instance of the object just as you would manipulate a group of them. The operations you can perform on all the composite objects often have a least common denominator relationship."),
			
			Question(question: ["Which structural pattern is on the image?"],
					 image: "StructuralPatterns2",
					 optionA: "Bridge",
					 optionB: "Facade",
					 optionC: "Adapter",
					 optionD: "",
					 questionId: 2736,
					 helpText: "Bridge is a structural design pattern that lets you split a large class or a set of closely related classes into two separate hierarchies—abstraction and implementation—which can be developed independently of each other."),
			
			Question(question: ["Structural design pattern that solves problems like: How can a class be reused that does not have an interface that a client requires?",
								"Structural design pattern that solves problems like: How can classes that have incompatible interfaces work together?",
								"The structural design pattern that solves problems like: How can an alternative interface be provided for a class?"],
					 image: "",
					 optionA: "Adapter",
					 optionB: "Bridge",
					 optionC: "Chain of responsibility",
					 optionD: "",
					 questionId: 2737,
					 helpText: "The adapter design pattern solves problems like: How can a class be reused that does not have an interface that a client requires? How can classes that have incompatible interfaces work together? How can an alternative interface be provided for a class?"),
			
			Question(question: ["Choose the structural pattern that requires to define an Implementor class"],
					 image: "",
					 optionA: "Bridge",
					 optionB: "Composite",
					 optionC: "Adapter",
					 optionD: "Proxy",
					 questionId: 2738,
					 helpText: "Correct answer: Bridge. Bridge separates an abstraction (Abstraction) from its implementation (Implementor) by putting them in separate class hierarchies. Implement the Abstraction in terms of (by delegating to) an Implementor object. This enables to configure an Abstraction with an Implementor object at run-time."),
			
			Question(question: ["Use this structural pattern when it’s awkward or not possible to extend an object’s behavior using inheritance"],
					 image: "",
					 optionA: "Decorator",
					 optionB: "Proxy",
					 optionC: "Flyweight",
					 optionD: "",
					 questionId: 2739,
					 helpText: "Use the pattern when it’s awkward or not possible to extend an object’s behavior using inheritance. Many programming languages have the final keyword that can be used to prevent further extension of a class. For a final class, the only way to reuse the existing behavior would be to wrap the class with your own wrapper, using the Decorator pattern."),
			
			Question(question: ["Use the ... pattern when you need to have a limited but straightforward interface to a complex subsystem"],
					 image: "",
					 optionA: "Facade",
					 optionB: "Adapter",
					 optionC: "Bridge",
					 optionD: "",
					 questionId: 2740,
					 helpText: "Use the Facade pattern when you need to have a limited but straightforward interface to a complex subsystem. Often, subsystems get more complex over time. Even applying design patterns typically leads to creating more classes. A subsystem may become more flexible and easier to reuse in various contexts, but the amount of configuration and boilerplate code it demands from a client grows ever larger. The Facade attempts to fix this problem by providing a shortcut to the most-used features of the subsystem which fit most client requirements."),
			
			Question(question: ["Use the ... pattern when large numbers of objects should be supported efficiently",
								"Which of the following structural patterns you can use when it’s crucial to avoid large numbers of objects"],
					 image: "",
					 optionA: "Flyweight",
					 optionB: "Singleton",
					 optionC: "State",
					 optionD: "",
					 questionId: 2741,
					 helpText: "What problems can the Flyweight design pattern solve: Large numbers of objects should be supported efficiently. Creating large numbers of objects should be avoided. When representing large text documents, for example, creating an object for each character in the document would result in a huge number of objects that could not be processed efficiently."),
			
			Question(question: ["Which structural pattern is on the image?"],
					 image: "StructuralPatterns4",
					 optionA: "Decorator",
					 optionB: "Composite",
					 optionC: "Facade",
					 optionD: "",
					 questionId: 2742,
					 helpText: "Decorator is a structural design pattern that lets you attach new behaviors to objects by placing these objects inside special wrapper objects that contain the behaviors.")
		]
	}
}
