
//  Created by Евгений Никитин on 11.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 07 - Вопросы (id) с 601 по 700

class ClosuresSet {
	static func getQuestions() -> [Question] {
		return [
			
			/// Во всех вопросах, где одна формулировка - приветствуется добавить другие 1 - 2 при желании :)
			
			Question(question: ["Сan you passed around closures in your code?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "No, you can only use it",
					 optionD: "",
					 questionId: 602,
					 helpText: "Closures are self-contained blocks of functionality that can be passed around and used in your code. Closures in Swift are similar to blocks in C and Objective-C and to lambdas in other programming languages."),
			
			/// Разделил 603 на два
			
			Question(question: ["What closures can do with references?"],
					 image: "",
					 optionA: "Capture and store it",
					 optionB: "Proccess it",
					 optionC: "Swap it",
					 optionD: "",
					 questionId: 603,
					 helpText: "Closures can capture and store references to any constants and variables from the context in which they are defined. This is known as closing over those constants and variables. Swift handles all of the memory management of capturing for you."),
			
			Question(question: ["Does Swift handles all of the memory management of capturing (closing over constants and variables) for you?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 60300,
					 helpText: "Closures can capture and store references to any constants and variables from the context in which they are defined. This is known as closing over those constants and variables. Swift handles all of the memory management of capturing for you."),
			
			Question(question: ["Are global functions a special case of closures?",
								"Are nested functions a special case of closures?",
								"Global and nested functions are actually special cases of closures. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 604,
					 helpText: "Global and nested functions are actually special cases of closures."),
			
			/// Разделил 605 на четыре
			
			Question(question: ["Closures take one of ... forms in Swift",
								"How many forms does the closures have in Swift?"],
					 image: "",
					 optionA: "Three",
					 optionB: "Two",
					 optionC: "Four",
					 optionD: "One",
					 questionId: 605,
					 helpText: "Closures take one of three forms: 1. Global functions are closures that have a name and don’t capture any values. 2. Nested functions are closures that have a name and can capture values from their enclosing function. 3. Closure expressions are unnamed closures written in a lightweight syntax that can capture values from their surrounding context."),
			
			Question(question: ["Closures that have a name and don’t capture any values",
								"Which closures can have a name and don’t capture any values?"],
					 image: "",
					 optionA: "Global functions",
					 optionB: "Nested functions",
					 optionC: "Unnamed closures",
					 optionD: "",
					 questionId: 60500,
					 helpText: "Global functions are closures that have a name and don’t capture any values."),
			
			Question(question: ["Closures that have a name and can capture values from their enclosing function",
								"Which closures can have a name and can capture values from their enclosing function?"],
					 image: "",
					 optionA: "Nested functions",
					 optionB: "Global functions",
					 optionC: "Unnamed closures",
					 optionD: "Closure expressions",
					 questionId: 60501,
					 helpText: "Nested functions are closures that have a name and can capture values from their enclosing function."),
			
			Question(question: ["Unnamed closures written in a lightweight syntax",
								"Unnamed closures written in a lightweight syntax that can capture values from their surrounding context"],
					 image: "",
					 optionA: "Closure expressions",
					 optionB: "Nested functions",
					 optionC: "Global functions",
					 optionD: "One",
					 questionId: 60502,
					 helpText: "Closure expressions are unnamed closures written in a lightweight syntax that can capture values from their surrounding context."),
			
			/// Разбил 606 на два
			
			Question(question: ["How many points does Swift closure optimization include?"],
					 image: "",
					 optionA: "Four",
					 optionB: "Three",
					 optionC: "Five",
					 optionD: "Zero",
					 questionId: 606,
					 helpText: "Swift’s closure expressions have a clean, clear style, with optimizations that encourage brief, clutter-free syntax in common scenarios. These optimizations include: 1. Inferring parameter and return value types from context. 2. Implicit returns from single-expression closures. 3. Shorthand argument names. 4. Trailing closure syntax."),
			
			/// Тут мог сильно напутать с вопросами
			
			Question(question: ["Can you infer parameter and return value types in closures from context?",
								"Can you have implicit returns in single-expression closures?",
								"Can you make shorthand argument names in closures?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 60600,
					 helpText: "Swift’s closure expressions have a clean, clear style, with optimizations that encourage brief, clutter-free syntax in common scenarios. These optimizations include: 1. Inferring parameter and return value types from context. 2. Implicit returns from single-expression closures. 3. Shorthand argument names. 4. Trailing closure syntax."),
			
			Question(question: ["Swift’s standard library provides this method, which sorts an array of values of a known type, based on the output of a sorting closure that you provide",
								"Which method, once it completes the sorting process, returns a new array of the same type and size as the old one, with its elements in the correct sorted order?"],
					 image: "",
					 optionA: "sorted(by:)",
					 optionB: "filter()",
					 optionC: "joined()",
					 optionD: "split()",
					 questionId: 607,
					 helpText: "Swift’s standard library provides a method called sorted(by:), which sorts an array of values of a known type, based on the output of a sorting closure that you provide. Once it completes the sorting process, the sorted(by:) method returns a new array of the same type and size as the old one, with its elements in the correct sorted order. The original array is not modified by the sorted(by:) method."),
			
			Question(question: ["Preferable way to provide the sorting closure as an argument to the sorted(by:) method?"],
					 image: "",
					 optionA: "Closure expression",
					 optionB: "Take any existing function",
					 optionC: "Write a normal function",
					 optionD: "",
					 questionId: 608,
					 helpText: "One way to provide the sorting closure is to write a normal function of the correct type, and to pass it in as an argument to the sorted(by:) method. However, this is a rather long-winded way to write what is essentially a single-expression function (a > b). It would be preferable to write the sorting closure inline, using closure expression syntax."),
			
			Question(question: ["Can we use in-out parameters in closure expression suntax?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 609,
					 helpText: "The parameters in closure expression syntax can be in-out parameters, but they can’t have a default value."),
			
			Question(question: ["Can we assign default values to parameters of our closure?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 610,
					 helpText: "The parameters in closure expression syntax can be in-out parameters, but they can’t have a default value."),
			
			Question(question: ["Can we use variadic parameters in closure expression suntax?",
								"Can we use tuples in closure expression suntax as a parameter type?",
								"Can we use tuples in closure expression suntax as a return type?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 611,
					 helpText: "Variadic parameters can be used if you name the variadic parameter. Tuples can also be used as parameter types and return types."),
			
			Question(question: ["For the inline closure expression, the parameters and return type are written this way"],
					 image: "",
					 optionA: "Inside the curly braces",
					 optionB: "Outside the curly braces",
					 optionC: "It doesn't matter",
					 optionD: "",
					 questionId: 612,
					 helpText: "For the inline closure expression, the parameters and return type are written inside the curly braces, not outside of them."),
			
			Question(question: ["The start of the closure’s body is introduced by this keyword",
								"Closure's bodu starts after this keyword",
								"After which keyword closure's body starts?"],
					 image: "",
					 optionA: "in",
					 optionB: "out",
					 optionC: "after",
					 optionD: "for",
					 questionId: 613,
					 helpText: "The start of the closure’s body is introduced by the in keyword. This keyword indicates that the definition of the closure’s parameters and return type has finished, and the body of the closure is about to begin."),
			
			Question(question: ["Can we infer the types of closure expression parameters and the type of the value it returns?",
								"When all of the types in closure expression is inferred, can we omit the return arrow (->)?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 614,
					 helpText: "Because the sorting closure is passed as an argument to a method, Swift can infer the types of its parameters and the type of the value it returns. The sorted(by:) method is being called on an array of strings, so its argument must be a function of type (String, String) -> Bool. This means that the (String, String) and Bool types don’t need to be written as part of the closure expression’s definition. Because all of the types can be inferred, the return arrow (->) and the parentheses around the names of the parameters can also be omitted."),
			
			Question(question: ["You can make the types explicit if you wish, and doing so is encouraged to ..."],
					 image: "",
					 optionA: "Avoid ambiguity",
					 optionB: "Speed-up the closure",
					 optionC: "Explicit indication of types is required",
					 optionD: "",
					 questionId: 615,
					 helpText: "You can make the types explicit if you wish, and doing so is encouraged if it avoids ambiguity for readers of your code. In the case of the sorted(by:) method, the purpose of the closure is clear from the fact that sorting is taking place, and it is safe for a reader to assume that the closure is likely to be working with String values, because it is assisting with the sorting of an array of strings."),
			
			Question(question: ["Can single-expression closures implicitly return the result of their single expression by omitting the return keyword from their declaration?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 616,
					 helpText: "Single-expression closures can implicitly return the result of their single expression by omitting the return keyword from their declaration, as in this version of the previous example: reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } ). Here, the function type of the sorted(by:) method’s argument makes it clear that a Bool value must be returned by the closure. Because the closure’s body contains a single expression (s1 > s2) that returns a Bool value, there’s no ambiguity, and the return keyword can be omitted."),
			
			Question(question: ["Does Swift automatically provides shorthand argument names to inline closures?",
								"Can we use shorthand argument names in inline closures?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 617,
					 helpText: "Swift automatically provides shorthand argument names to inline closures, which can be used to refer to the values of the closure’s arguments by the names $0, $1, $2, and so on. If you use these shorthand argument names within your closure expression, you can omit the closure’s argument list from its definition, and the number and type of the shorthand argument names will be inferred from the expected function type. The in keyword can also be omitted, because the closure expression is made up entirely of its body: reversedNames = names.sorted(by: { $0 > $1 } ). Here, $0 and $1 refer to the closure’s first and second String arguments."),
			
			Question(question: ["Are the first and second closures equivalent?"],
					 image: "Closures18",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 618,
					 helpText: "Yes. Swift’s String type defines its string-specific implementation of the greater-than operator (>) as a method that has two parameters of type String, and returns a value of type Bool. This exactly matches the method type needed by the sorted(by:) method. Therefore, you can simply pass in the greater-than operator, and Swift will infer that you want to use its string-specific implementation."),
			
			Question(question: ["You write this closure after the function call’s parentheses",
								"You write this closure after the function call’s parentheses, even though the trailing closure is still an argument to the function",
								"When you use this closure syntax, you don’t write the argument label for the first closure as part of the function call"],
					 image: "",
					 optionA: "Trailing closure",
					 optionB: "Last closure",
					 optionC: "Final closure",
					 optionD: "",
					 questionId: 619,
					 helpText: "If you need to pass a closure expression to a function as the function’s final argument and the closure expression is long, it can be useful to write it as a trailing closure instead. You write a trailing closure after the function call’s parentheses, even though the trailing closure is still an argument to the function. When you use the trailing closure syntax, you don’t write the argument label for the first closure as part of the function call."),
			
			Question(question: ["Which line dones't use a trailing closure?",
								"One on these lines of code doesn't use trailing closure. Which one?"],
					 image: "Closures20",
					 optionA: "First",
					 optionB: "Second",
					 optionC: "Both",
					 optionD: "Both are not",
					 questionId: 620,
					 helpText: "Trailing closure is only used in the second example. You write a trailing closure after the function call’s parentheses, even though the trailing closure is still an argument to the function."),
			
			Question(question: ["If a closure expression is provided as the function’s or method’s only argument and you provide that expression as a trailing closure, do you need to write a pair of parentheses ()?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 621,
					 helpText: "If a closure expression is provided as the function’s or method’s only argument and you provide that expression as a trailing closure, you don’t need to write a pair of parentheses () after the function or method’s name when you call the function."),
			
			Question(question: ["Swift’s Array type has this method, which takes a closure expression as its single argument"],
					 image: "",
					 optionA: "map(_:)",
					 optionB: "sort()",
					 optionC: "flatMap(_:)",
					 optionD: "shuffled()",
					 questionId: 622,
					 helpText: "Swift’s Array type has a map(_:) method, which takes a closure expression as its single argument. The closure is called once for each item in the array, and returns an alternative mapped value (possibly of some other type) for that item. You specify the nature of the mapping and the type of the returned value by writing code in the closure that you pass to map(_:). After applying the provided closure to each array element, the map(_:) method returns a new array containing all of the new mapped values, in the same order as their corresponding values in the original array."),
			
			Question(question: ["Can a closure capture and then modify the values of constants and variables from within its body, even if the original scope that defined the constants and variables no longer exists?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "Only variables",
					 optionD: "",
					 questionId: 623,
					 helpText: "A closure can capture constants and variables from the surrounding context in which it is defined. The closure can then refer to and modify the values of those constants and variables from within its body, even if the original scope that defined the constants and variables no longer exists."),
			
			Question(question: ["Can a nested function capture any of its outer function’s arguments and also capture any constants and variables defined within the outer function?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 624,
					 helpText: "In Swift, the simplest form of a closure that can capture values is a nested function, written within the body of another function. A nested function can capture any of its outer function’s arguments and can also capture any constants and variables defined within the outer function."),
			
			/// Пожалуйста переведи самописный 625
			
			Question(question: ["Какое значение мы получим в консоль?"],
					 image: "Closures35",
					 optionA: "Objc",
					 optionB: "Swift",
					 optionC: "Ошибка компиляции",
					 optionD: "Нет правильного ответа",
					 questionId: 625,
					 helpText: "В момент создания замыкания (когда мы определяем code) переменная language захватывается: значение в этот момент времени доступно в теле замыкания. Поэтому данная программа выводит Objc. Замыкания могут захватывать константы и переменные из окружающего контекста, в котором оно объявлено. После захвата замыкание может ссылаться или модифицировать значения этих констант и переменных внутри своего тела, даже если область, в которой были объявлены эти константы и переменные уже больше не существует."),
			
			Question(question: ["Are functions and closures reference types."],
					 image: "",
					 optionA: "Reference types",
					 optionB: "Value types",
					 optionC: "Functional types",
					 optionD: "",
					 questionId: 626,
					 helpText: "Functions and closures are reference types. Whenever you assign a function or a closure to a constant or a variable, you are actually setting that constant or variable to be a reference to the function or closure. This also means that if you assign a closure to two different constants or variables, both of those constants or variables refer to the same closure."),
			
			Question(question: ["What keyword can you use to indicate that the closure is allowed to escape?",
								"When your closure is allowed to escape, you need to write this keyword"],
					 image: "",
					 optionA: "@escaping",
					 optionB: "@exit",
					 optionC: "@сбегающее",
					 optionD: "@after",
					 questionId: 627,
					 helpText: "A closure is said to escape a function when the closure is passed as an argument to the function, but is called after the function returns. When you declare a function that takes a closure as one of its parameters, you can write @escaping before the parameter’s type to indicate that the closure is allowed to escape."),
			
			/// Если сможешь переформулируй третий ответ, только надо не вылезти за количество знаков, иначе будет "заступ" за края кнопки
			
			Question(question: ["When is the escaping closure called?",
								"At what moment does the escaping closure called?"],
					 image: "",
					 optionA: "Operation is completed",
					 optionB: "After operation is started",
					 optionC: "Doesn't depend on operation lifecycle",
					 optionD: "",
					 questionId: 628,
					 helpText: "One way that a closure can escape is by being stored in a variable that’s defined outside the function. As an example, many functions that start an asynchronous operation take a closure argument as a completion handler. The function returns after it starts the operation, but the closure isn’t called until the operation is completed—the closure needs to escape, to be called later."),
			
			Question(question: ["What is going to happen if you didn’t mark the parameter of this function with @escaping?"],
					 image: "Closures29",
					 optionA: "Сompile-time error",
					 optionB: "The function will work fine",
					 optionC: "Runtime error",
					 optionD: "",
					 questionId: 629,
					 helpText: "The someFunctionWithEscapingClosure(_:) function takes a closure as its argument and adds it to an array that’s declared outside the function. If you didn’t mark the parameter of this function with @escaping, you would get a compile-time error."),
			
			Question(question: ["Closure that is automatically created to wrap an expression that’s being passed as an argument to a function",
								"This types of closures are automatically created to wrap an expression that’s being passed as an argument to a function"],
					 image: "",
					 optionA: "Autoclosure",
					 optionB: "Semi-autoclosure",
					 optionC: "In-out closures",
					 optionD: "Escaping closures",
					 questionId: 630,
					 helpText: "An autoclosure is a closure that is automatically created to wrap an expression that’s being passed as an argument to a function. It doesn’t take any arguments, and when it’s called, it returns the value of the expression that’s wrapped inside of it. This syntactic convenience lets you omit braces around a function’s parameter by writing a normal expression instead of an explicit closure."),
			
			Question(question: ["When the first element of the array is removed by the code inside the closure, will it be removed if the closure is never actually called?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 631,
					 helpText: "When the first element of the array is removed by the code inside the closure, the array element isn’t removed until the closure is actually called. If the closure is never called, the expression inside the closure is never evaluated, which means the array element is never removed."),
			
			Question(question: ["How can you indicate autoclosure in code?"],
					 image: "",
					 optionA: "@autoclosure",
					 optionB: "@closure",
					 optionC: "@auto",
					 optionD: "autoclosure",
					 questionId: 632,
					 helpText: "Correct answer: @autoclosure."),
			
			Question(question: ["Can we use @autoclosure and @escaping at the same time?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 633,
					 helpText: "If you want an autoclosure that is allowed to escape, use both the @autoclosure and @escaping attributes."),
			
			Question(question: ["What will we get into console?"],
					 image: "Closures34",
					 optionA: "Unknown",
					 optionB: "OK",
					 optionC: "Not found",
					 optionD: "Server",
					 questionId: 634,
					 helpText: "Correct answer: Unknown. We assign the value 300 to the message variable, and we also send the value 300 to the computed property foo for checking. After checking inside foo, we return Unknown.")
		]
	}
}
