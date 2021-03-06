
//  Created by Евгений Никитин on 12.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 24 - Вопросы (id) с 2301 по 2400

class AccessControlSet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: ["A single unit of code distribution — a framework or application",
								"A single unit of code distribution — a framework or application that is built and shipped as a single unit"],
					 image: "",
					 optionA: "Module",
					 optionB: "Element",
					 optionC: "Core",
					 optionD: "Framework",
					 questionId: 2301,
					 helpText: "A module is a single unit of code distribution—a framework or application that is built and shipped as a single unit and that can be imported by another module with Swift’s import keyword. Each build target (such as an app bundle or framework) in Xcode is treated as a separate module in Swift. If you group together aspects of your app’s code as a stand-alone framework—perhaps to encapsulate and reuse that code across multiple applications—then everything you define within that framework will be part of a separate module when it’s imported and used within an app, or when it’s used within another framework."),
			
			Question(question: ["Keyword for importing a new module into code",
								"New module can be imported by this keyword"],
					 image: "",
					 optionA: "import",
					 optionB: "add",
					 optionC: "start",
					 optionD: "export",
					 questionId: 2302,
					 helpText: "A module is a single unit of code distribution — a framework or application that is built and shipped as a single unit and that can be imported by another module with Swift’s import keyword."),
			
			Question(question: ["What is the name of a single Swift source code file within a module?"],
					 image: "",
					 optionA: "Source file",
					 optionB: "Source",
					 optionC: "Singleton",
					 optionD: "Module",
					 questionId: 2303,
					 helpText: "A source file is a single Swift source code file within a module (in effect, a single file within an app or framework). Although it’s common to define individual types in separate source files, a single source file can contain definitions for multiple types, functions, and so on."),
			
			Question(question: ["How many different access levels does Swift provide?",
								"Swift provides this many different access levels for entities within your code"],
					 image: "",
					 optionA: "Five",
					 optionB: "Four",
					 optionC: "Three",
					 optionD: "Forty-two",
					 questionId: 2304,
					 helpText: "Swift provides five different access levels for entities within your code. These access levels are relative to the source file in which an entity is defined, and also relative to the module that source file belongs to."),
			
			Question(question: ["The access levels that enable entities to be used within any source file from their defining module",
								"Which access levels enable entities to be used within any source file from their defining module?",
								"Which access levels enable entities to be used within any source file from their defining module, and also in a source file from another module?"],
					 image: "",
					 optionA: "Open access and public access",
					 optionB: "Internal access and public access",
					 optionC: "File-private access and open access",
					 optionD: "Private access and internal access",
					 questionId: 2305,
					 helpText: "Open access and public access enable entities to be used within any source file from their defining module, and also in a source file from another module that imports the defining module. You typically use open or public access when specifying the public interface to a framework."),
			
			Question(question: ["This access level restricts the use of an entity to the enclosing declaration",
								"Which access level restricts the use of an entity to the enclosing declaration, and to extensions of that declaration that are in the same file?"],
					 image: "",
					 optionA: "Private access",
					 optionB: "Internal access",
					 optionC: "File-private access",
					 optionD: "Open access and public access",
					 questionId: 2306,
					 helpText: "Private access restricts the use of an entity to the enclosing declaration, and to extensions of that declaration that are in the same file. Use private access to hide the implementation details of a specific piece of functionality when those details are used only within a single declaration."),
			
			Question(question: ["Is Open access the highest (least restrictive) access level?",
								"Is Private access the lowest (most restrictive) access level?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2307,
					 helpText: "Open access is the highest (least restrictive) access level and private access is the lowest (most restrictive) access level."),
			
			Question(question: ["Classes with this access level can be inherited only in the module in which they are defined",
								"This access level doesn’t allow code outside the module to subclass and override"],
					 image: "",
					 optionA: "Public access",
					 optionB: "Open access",
					 optionC: "",
					 optionD: "",
					 questionId: 2308,
					 helpText: "Open access applies only to classes and class members, and it differs from public access by allowing code outside the module to subclass and override. Marking a class as open explicitly indicates that you’ve considered the impact of code from other modules using that class as a superclass, and that you’ve designed your class’s code accordingly."),
			
			Question(question: ["The  access level that allows code outside the module to subclass and override",
								"Marking a class as this level explicitly indicates that you’ve considered the impact of code from other modules using that class as a superclass"],
					 image: "",
					 optionA: "Open",
					 optionB: "Public",
					 optionC: "Internal",
					 optionD: "",
					 questionId: 2309,
					 helpText: "Open access applies only to classes and class members, and it differs from public access by allowing code outside the module to subclass and override. Marking a class as open explicitly indicates that you’ve considered the impact of code from other modules using that class as a superclass, and that you’ve designed your class’s code accordingly."),
			
			Question(question: ["Can entity be defined in terms of another entity that has a lower (more restrictive) access level?",
								"Can a public variable be defined as having an internal, file-private, or private type?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2310,
					 helpText: "Access levels in Swift follow an overall guiding principle: No entity can be defined in terms of another entity that has a lower (more restrictive) access level. For example: A public variable can’t be defined as having an internal, file-private, or private type, because the type might not be available everywhere that the public variable is used."),
			
			Question(question: ["A function can’t have a higher access level than its parameter types and return type. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2311,
					 helpText: "A function can’t have a higher access level than its parameter types and return type, because the function could be used in situations where its constituent types are unavailable to the surrounding code."),
			
			Question(question: ["The access that enables entities to be used within any source file from their defining module",
								"Which access enables entities to be used within any source file from their defining module?",
								"You typically use this access level when defining an app’s or a framework’s internal structure"],
					 image: "",
					 optionA: "Internal access",
					 optionB: "Open access and public access",
					 optionC: "Private access",
					 optionD: "",
					 questionId: 2312,
					 helpText: "Internal access enables entities to be used within any source file from their defining module, but not in any source file outside of that module. You typically use internal access when defining an app’s or a framework’s internal structure."),
			
			Question(question: ["Which access level all entities in your code have by default?",
								"All entities in your code have that access level by default"],
					 image: "",
					 optionA: "Internal",
					 optionB: "Open",
					 optionC: "Private",
					 optionD: "File-private",
					 questionId: 2313,
					 helpText: "All entities in your code (with a few specific exceptions) have a default access level of internal if you don’t specify an explicit access level yourself. As a result, in many cases you don’t need to specify an explicit access level in your code."),
			
			Question(question: ["At what point do you need to explicitly specify the access level for a custom type?",
								"If you want to specify an explicit access level for a custom type, at what point you must explicitly specify its access level?"],
					 image: "",
					 optionA: "When you define the type",
					 optionB: "When you first using the type",
					 optionC: "When you creating the instance",
					 optionD: "",
					 questionId: 2314,
					 helpText: "If you want to specify an explicit access level for a custom type, do so at the point that you define the type. The new type can then be used wherever its access level permits."),
			
			Question(question: ["Where can you use a class with file-private access level?",
								"A class with file-private access level can be used..."],
					 image: "",
					 optionA: "Only in the source file",
					 optionB: "Anywhere within the module",
					 optionC: "Wherever you need it",
					 optionD: "Nowhere",
					 questionId: 2315,
					 helpText: "If you define a file-private class, that class can only be used as the type of a property, or as a function parameter or return type, in the source file in which the file-private class is defined."),
			
			Question(question: ["This access level restricts the use of an entity to its own defining source file",
								"Which access level we need to use to hide the implementation details of a specific piece of functionality?"],
					 image: "",
					 optionA: "File-private access",
					 optionB: "Private access",
					 optionC: "Internal access",
					 optionD: "",
					 questionId: 2316,
					 helpText: "File-private access restricts the use of an entity to its own defining source file. Use file-private access to hide the implementation details of a specific piece of functionality when those details are used within an entire file."),
			
			Question(question: ["If you compose a tuple from two types, one with internal access and one with private access, which access the compound tuple will get?"],
					 image: "",
					 optionA: "Private",
					 optionB: "Internal",
					 optionC: "",
					 optionD: "",
					 questionId: 2317,
					 helpText: "The access level for a tuple type is the most restrictive access level of all types used in that tuple. For example, if you compose a tuple from two different types, one with internal access and one with private access, the access level for that compound tuple type will be private."),
			
			Question(question: ["Can you explicitly specify the access level for a tuple?",
								"Can we manually define the access level for a tuple?",
								"A tuple type’s access level can be specified explicitly. Is that true?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2318,
					 helpText: "Tuple types don’t have a standalone definition in the way that classes, structures, enumerations, and functions do. A tuple type’s access level is determined automatically from the types that make up the tuple type, and can’t be specified explicitly."),
			
			Question(question: ["If the function’s calculated access level doesn’t match the contextual default, do we need to specify the access level explicitly?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2319,
					 helpText: "You must specify the access level explicitly as part of the function’s definition if the function’s calculated access level doesn’t match the contextual default."),
			
			Question(question: ["Which access level will a function have in case its parameters and return values have different levels?",
								"The access level for a function type is calculated as this access level of the function’s parameter types and return type"],
					 image: "",
					 optionA: "Most restrictive",
					 optionB: "Least restrictive",
					 optionC: "As its parameters level",
					 optionD: "As its return type level",
					 questionId: 2320,
					 helpText: "The access level for a function type is calculated as the most restrictive access level of the function’s parameter types and return type."),
			
			Question(question: ["What will we get after running the following code?"],
					 image: "AccessControl21",
					 optionA: "Compile-time error",
					 optionB: "The code will compile and run",
					 optionC: "Nothing",
					 optionD: "",
					 questionId: 2321,
					 helpText: "The example defines a global function called someFunction(), without providing a specific access-level modifier for the function itself. You might expect this function to have the default access level of “internal”, but this isn’t the case. In fact, someFunction() won’t compile as written below. The function’s return type is a tuple type composed from two of the custom classes. One of these classes is defined as internal, and the other is defined as private. Therefore, the overall access level of the compound tuple type is private (the minimum access level of the tuple’s constituent types). Because the function’s return type is private, you must mark the function’s overall access level with the private modifier for the function declaration to be valid."),
			
			Question(question: ["Can you specify a different access level for individual enumeration cases?",
								"We must manually specify access levels for individual enumeration cases. Is that true?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2322,
					 helpText: "The individual cases of an enumeration automatically receive the same access level as the enumeration they belong to. You can’t specify a different access level for individual enumeration cases."),
			
			Question(question: ["Which access level will the south case have?"],
					 image: "AccessControl23",
					 optionA: "Public",
					 optionB: "Open",
					 optionC: "Internal",
					 optionD: "Private",
					 questionId: 2323,
					 helpText: "In the example below, the CompassPoint enumeration has an explicit access level of public. The enumeration cases north, south, east, and west therefore also have an access level of public."),
			
			Question(question: ["Can we use raw values with lower access level for enumeration cases than the access level of the enumeration itself?",
								"Can you use a private access for the raw value of an enumeration that has internal access level?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2324,
					 helpText: "The types used for any raw values or associated values in an enumeration definition must have an access level at least as high as the enumeration’s access level. For example, you can’t use a private type as the raw-value type of an enumeration with an internal access level."),
			
			Question(question: ["What do you need to do to make a nested type within a public type publicly available?"],
					 image: "",
					 optionA: "Declare the nested type as public",
					 optionB: "It'll be set as public automatically",
					 optionC: "Declare it as Open access",
					 optionD: "",
					 questionId: 2325,
					 helpText: "The access level of a nested type is the same as its containing type, unless the containing type is public. Nested types defined within a public type have an automatic access level of internal. If you want a nested type within a public type to be publicly available, you must explicitly declare the nested type as public."),
			
			Question(question: ["Can a subclass have a higher access level than its superclass?",
								"You can write a public subclass of an internal superclass. Is that true?",
								"A subclass can have a higher access level than its superclass. Is that true?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2326,
					 helpText: "You can subclass any class that can be accessed in the current access context and that’s defined in the same module as the subclass. You can also subclass any open class that’s defined in a different module. A subclass can’t have a higher access level than its superclass—for example, you can’t write a public subclass of an internal superclass."),
			
			Question(question: ["Can we make an inherited class member more accessible than its superclass version?"],
					 image: "AccessControl27",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2327,
					 helpText: "Yes. An override can make an inherited class member more accessible than its superclass version. In the example below, class A is a public class with a file-private method called someMethod(). Class B is a subclass of A, with a reduced access level of “internal”. Nonetheless, class B provides an override of someMethod() with an access level of “internal”, which is higher than the original implementation of someMethod()."),
			
			Question(question: ["Can a property be more public than its type?",
								"Is it valid to write a public property with a private type?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2328,
					 helpText: "A constant, variable, or property can’t be more public than its type. It’s not valid to write a public property with a private type, for example. Similarly, a subscript can’t be more public than either its index type or return type."),
			
			Question(question: ["Can custom initializers be assigned an access level less than or equal to the type that they initialize?",
								"Should the required initializer have the same access level as the class it belongs to?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2329,
					 helpText: "Custom initializers can be assigned an access level less than or equal to the type that they initialize. The only exception is for required initializers (as defined in Required Initializers). A required initializer must have the same access level as the class it belongs to."),
			
			Question(question: ["What access level does a default initializer have for a type that is defined as public?"],
					 image: "",
					 optionA: "Internal",
					 optionB: "Public",
					 optionC: "Open",
					 optionD: "Private",
					 questionId: 2330,
					 helpText: "A default initializer has the same access level as the type it initializes, unless that type is defined as public. For a type that is defined as public, the default initializer is considered internal. If you want a public type to be initializable with a no-argument initializer when used in another module, you must explicitly provide a public no-argument initializer yourself as part of the type’s definition."),
			
			Question(question: ["Is it possible to assign access levels to protocols?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2331,
					 helpText: "If you want to assign an explicit access level to a protocol type, do so at the point that you define the protocol. This enables you to create protocols that can only be adopted within a certain access context."),
			
			Question(question: ["What access level all requirements of a protocol get within its definition?",
								"Which access level each requirement within a protocol definition get?"],
					 image: "",
					 optionA: "The same access level as the protocol",
					 optionB: "Public access",
					 optionC: "Open access",
					 optionD: "Internal access",
					 questionId: 2332,
					 helpText: "The access level of each requirement within a protocol definition is automatically set to the same access level as the protocol. You can’t set a protocol requirement to a different access level than the protocol it supports. This ensures that all of the protocol’s requirements will be visible on any type that adopts the protocol."),
			
			Question(question: ["If you define a public protocol, the protocol’s requirements require this access level...",
								"Which access level will a public protocol requirements have?"],
					 image: "",
					 optionA: "Public",
					 optionB: "Internal",
					 optionC: "Open",
					 optionD: "Private",
					 questionId: 2333,
					 helpText: "If you define a public protocol, the protocol’s requirements require a public access level for those requirements when they’re implemented. This behavior is different from other types, where a public type definition implies an access level of internal for the type’s members."),
			
			Question(question: ["Can we write a public protocol that inherits from an internal protocol?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2334,
					 helpText: "If you define a new protocol that inherits from an existing protocol, the new protocol can have at most the same access level as the protocol it inherits from. For example, you can’t write a public protocol that inherits from an internal protocol."),
			
			Question(question: ["Can a type conform to a protocol with a lower access level than the type itself?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2335,
					 helpText: "A type can conform to a protocol with a lower access level than the type itself. For example, you can define a public type that can be used in other modules, but whose conformance to an internal protocol can only be used within the internal protocol’s defining module."),
			
			Question(question: ["Is it possible for a type to conform to a protocol in two different ways within the same program?",
								"Protocol conformance in Swift is internal. Is that true?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2336,
					 helpText: "In Swift, as in Objective-C, protocol conformance is global — it isn’t possible for a type to conform to a protocol in two different ways within the same program.")
		]
	}
}
