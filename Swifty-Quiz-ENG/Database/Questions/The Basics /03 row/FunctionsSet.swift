
//  Created by Евгений Никитин on 11.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 06 - Вопросы (id) с 501 по 600

class FunctionsSet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: ["You give a function ... name that identifies what it does"],
					 image: "",
					 optionA: "Unique",
					 optionB: "Capitalized",
					 optionC: "One word",
					 optionD: "",
					 questionId: 501,
					 helpText: "Functions are self-contained chunks of code that perform a specific task. You give a function unique name that identifies what it does, and this name is used to “call” the function to perform its task when needed."),
			
			Question(question: ["Can functions modify passed variables once the function has completed its execution?",
								"After function execution, it can modify passed variables. Is that true?",
								"Is it possible in Swift to change external variables once the function has completed its execution?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 502,
					 helpText: "Yes. Swift’s unified function syntax is flexible enough to express anything from a simple C-style function with no parameter names to a complex Objective-C-style method with names and argument labels for each parameter. Parameters can provide default values to simplify function calls and can be passed as in-out parameters, which modify a passed variable once the function has completed its execution."),
			
			/// Раздробил вопрос 503
			
			Question(question: ["Does every function in Swift has a type, consisting of the function’s parameter types and return type?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 503,
					 helpText: "Every function in Swift has a type, consisting of the function’s parameter types and return type."),
			
			Question(question: ["Can we pass functions as parameters to other functions?",
								"Can we return functions from functions?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 50300,
					 helpText: "You can use this type like any other type in Swift, which makes it easy to pass functions as parameters to other functions, and to return functions from functions."),
			
			Question(question: ["Can functions be written within other functions to encapsulate useful functionality within a nested function scope?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 50301,
					 helpText: "Functions can be written within other functions to encapsulate useful functionality within a nested function scope."),
			
			Question(question: ["Are the functions required to define its input parameters?",
								"Are the functions required to define its return type?",
								"Are the functions required to define its input parameters and return type?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "Only input parameters",
					 optionD: "",
					 questionId: 505,
					 helpText: "When you define a function, you can optionally define one or more named, typed values that the function takes as input, known as parameters. You can also optionally define a type of value that the function will pass back as output when it is done, known as its return type. Functions are not required to define input parameters. Here’s a function with no input parameters, which always returns the same String message whenever it is called: func sayHelloWorld() -> String { return \"hello, world\" }"),
			
			Question(question: ["Does the function definition needs parentheses even though it does not take any parameters?",
								"Does the function (without any parameters) name need to be followed by an empty pair of parentheses when it is called?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 50500,
					 helpText: "Functions are not required to define input parameters. The function definition still needs parentheses after the function’s name, even though it does not take any parameters. The function name is also followed by an empty pair of parentheses when the function is called."),
			
			Question(question: ["Are we required to provide a function name?",
								"We must assign a unique name to each function. Is that true?",
								"Every function in Swift must have a name. Is that correct?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 506,
					 helpText: "Every function has a function name, which describes the task that the function performs. To use a function, you “call” that function with its name and pass it input values (known as arguments) that match the types of the function’s parameters."),
			
			Question(question: ["When we are declaring a function, we specify the return type after this sign",
								"After what sign should we write the return type of the function?",
								"After this sign, we can specify the function return type"],
					 image: "",
					 optionA: "->",
					 optionB: "-",
					 optionC: "=>",
					 optionD: ":",
					 questionId: 507,
					 helpText: "You indicate the function’s return type with the return arrow -> (a hyphen followed by a right angle bracket), which is followed by the name of the type to return."),
			
			Question(question: ["Can the function be wrapped in a call to the print(_:separator:terminator:)?",
								"Can we wrapped a function in print(_:separator:terminator:) to see its return value?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 508,
					 helpText: "Functions that return values can be wrapped in a call to the print(_:separator:terminator:) function to print that value."),
			
			/// C 509 что-то не пошло у меня. Трудно сформулировать такое на английском
			
			Question(question: ["Will the function do something else after return statement?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 509,
					 helpText: "After return statement the function finishes its execution and returns the current value."),
			
			Question(question: ["Can you call a function multiple times?",
								"Does Swift support multiple calls to the same function?",
								"Can you call a function multiple times with different input values?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 510,
					 helpText: "Yes, you can call the function multiple times with different input values."),
			
			Question(question: ["Can you define a simple utility function with a single unnamed parameter in Swift?",
								"Can you define a complex function with expressive parameter names?",
								"Can you define a complex function with different parameter options in Swift?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 512,
					 helpText: "Function parameters and return values are extremely flexible in Swift. You can define anything from a simple utility function with a single unnamed parameter to a complex function with expressive parameter names and different parameter options."),
			
			Question(question: ["Should we write empty parentheses when defining and calling a function if it has no input parameters?",
								"If a function has no input parameters, should we write empty parentheses when defining and calling it?",
								"When we defining and calling a function without input parameters, we must put empty parentheses. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 13,
					 helpText: "Functions are not required to define input parameters. The function definition still needs parentheses after the function’s name, even though it does not take any parameters. The function name is also followed by an empty pair of parentheses when the function is called."),
			
			Question(question: ["Does function still return a value of this type, even though no return value is defined?"],
					 image: "",
					 optionA: "Yes, Void",
					 optionB: "Yes, return type",
					 optionC: "Yes, empty String",
					 optionD: "No",
					 questionId: 514,
					 helpText: "Function does still return a value, even though no return value is defined. Functions without a defined return type return a special value of type Void. This is simply an empty tuple, which is written as ()."),
			
			Question(question: ["We define return type to a function and didn't write return statement in the function's body. What is going to happen?",
								"If we define the return type for the function, but in fact we use an empty return, what will happen?"],
					 image: "",
					 optionA: "Compile-time error",
					 optionB: "Nothing",
					 optionC: "We will get a value",
					 optionD: "nil",
					 questionId: 515,
					 helpText: "Return values can be ignored, but a function that says it will return a value must always do so. A function with a defined return type cannot allow control to fall out of the bottom of the function without returning a value, and attempting to do so will result in a compile-time error."),
			
			Question(question: ["If we need to return multiple values from a function, what return type should we specify?",
								"What return type should we specify so that we can return multiple values as part of one compound return value?",
								"You can return a compound value with several values from a function by specifying this type"],
					 image: "",
					 optionA: "Tuple",
					 optionB: "Array",
					 optionC: "Set",
					 optionD: "Void",
					 questionId: 516,
					 helpText: "You can use a tuple type as the return type for a function to return multiple values as part of one compound return value."),
			
			Question(question: ["Pick the optional tuple type",
								"This tuple type we will use if the entire tuple can be nil"],
					 image: "",
					 optionA: "(Int, Int)?",
					 optionB: "(Int?, Int?)",
					 optionC: "(Int, Int?)",
					 optionD: "(Int?, Int)",
					 questionId: 517,
					 helpText: "If the tuple type to be returned from a function has the potential to have “no value” for the entire tuple, you can use an optional tuple return type to reflect the fact that the entire tuple can be nil. You write an optional tuple return type by placing a question mark after the tuple type’s closing parenthesis, such as (Int, Int)? or (String, Int, Bool)?. An optional tuple type such as (Int, Int)? is different from a tuple that contains optional types such as (Int?, Int?). With an optional tuple type, the entire tuple is optional, not just each individual value within the tuple."),
			
			Question(question: ["How should you write an argument label?",
								"You write an argument label like that"],
					 image: "",
					 optionA: "Before the parameter name",
					 optionB: "After the parameter name",
					 optionC: "We can do both",
					 optionD: "",
					 questionId: 518,
					 helpText: "You write an argument label before the parameter name, separated by a space."),
			
			Question(question: ["How can we call the second argument in funcion's body?"],
					 image: "Functions19",
					 optionA: "second",
					 optionB: "and",
					 optionC: "and second",
					 optionD: "",
					 questionId: 519,
					 helpText: "Correct answer: second. Each function parameter has both an argument label and a parameter name. The argument label is used when calling the function; each argument is written in the function call with its argument label before it. The parameter name is used in the implementation of the function. By default, parameters use their parameter name as their argument label."),
			
			Question(question: ["How can we call the second argument when we call that function?"],
					 image: "Functions19",
					 optionA: "and",
					 optionB: "second",
					 optionC: "and second",
					 optionD: "",
					 questionId: 520,
					 helpText: "Correct answer: and. Each function parameter has both an argument label and a parameter name. The argument label is used when calling the function; each argument is written in the function call with its argument label before it. The use of argument labels can allow a function to be called in an expressive, sentence-like manner, while still providing a function body that is readable and clear in intent."),
			
			Question(question: ["If you don’t want an argument label for a parameter, write this ...",
								"You can use ... instead of an explicit argument label for that parameter"],
					 image: "",
					 optionA: "Underscore (_)",
					 optionB: "Space ( )",
					 optionC: "Semicolon",
					 optionD: "Argument label is always required",
					 questionId: 521,
					 helpText: "If you don’t want an argument label for a parameter, write an underscore (_) instead of an explicit argument label for that parameter. If a parameter has an argument label, the argument must be labeled when you call the function."),
			
			Question(question: ["Is it possible to assign a default value to the input parameter of your function?",
								"We can assign default values for function input parameters. Is that true?",
								"You can assign default values for the input parameters of your function. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 522,
					 helpText: "You can define a default value for any parameter in a function by assigning a value to the parameter after that parameter’s type. If a default value is defined, you can omit that parameter when calling the function."),
			
			/// 523 поделил
			
			Question(question: ["Can we omit parameter when calling the function, if a default value for this parameter is defined?",
								"If a default value is defined, you can omit that parameter when calling the function. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 523,
					 helpText: "You can define a default value for any parameter in a function by assigning a value to the parameter after that parameter’s type. If a default value is defined, you can omit that parameter when calling the function."),
			
			Question(question: ["Place parameters that don’t have default values ..."],
					 image: "",
					 optionA: "At the beginning of a parameter list",
					 optionB: "After parameters with default values",
					 optionC: "",
					 optionD: "",
					 questionId: 52300,
					 helpText: "You can define a default value for any parameter in a function by assigning a value to the parameter after that parameter’s type. If a default value is defined, you can omit that parameter when calling the function. Place parameters that don’t have default values at the beginning of a function’s parameter list, before the parameters that have default values. Parameters that don’t have default values are usually more important to the function’s meaning—writing them first makes it easier to recognize that the same function is being called, regardless of whether any default parameters are omitted."),
			
			Question(question: ["Choose correct variadic parameter",
								"Variadic parameters write like that"],
					 image: "",
					 optionA: "func list(names: String...) { }",
					 optionB: "func list(names: ...String) { }",
					 optionC: "func list(names: String!) { }",
					 optionD: "",
					 questionId: 524,
					 helpText: "A variadic parameter accepts zero or more values of a specified type. You use a variadic parameter to specify that the parameter can be passed a varying number of input values when the function is called. Write variadic parameters by inserting three period characters (...) after the parameter’s type name."),
			
			Question(question: ["As what type are variadic parameters available within the function?",
								"Variadic parameters are available as this inside the function",
								"How can you use a variadic input parameter inside a function?"],
					 image: "",
					 optionA: "As an array",
					 optionB: "As a dictionary",
					 optionC: "As a tuple",
					 optionD: "As a set of the appropriate type",
					 questionId: 525,
					 helpText: "The values passed to a variadic parameter are made available within the function’s body as an array of the appropriate type. For example, a variadic parameter with a name of numbers and a type of Double... is made available within the function’s body as a constant array called numbers of type [Double]."),
			
			Question(question: ["Can your function have multiple variadic parameters?",
								"We can pass several variadic parameters to the function. Is that so?",
								"Can you pass multiple variadic parameters to the input parameters of your function?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "Yes, separated by semicolon",
					 optionD: "",
					 questionId: 526,
					 helpText: "A function may have at most one variadic parameter."),
			
			Question(question: ["If you will try to change the value of a function parameter from within the body, what is going to happen?",
								"What is going to happen if you try to change the value of a function parameter from within its body?"],
					 image: "",
					 optionA: "A compile-time error",
					 optionB: "The value will change",
					 optionC: "The value won't change",
					 optionD: "",
					 questionId: 527,
					 helpText: "Function parameters are constants by default. Trying to change the value of a function parameter from within the body of that function results in a compile-time error. This means that you can’t change the value of a parameter by mistake."),
			
			/// Если захочешь перефразировать ответы - имей ввиду что сильно "длиньше" их делать уже нельзя
			
			Question(question: ["If you want a function to modify a parameter’s value, and you want those changes to persist after the function call has ended, what should you do?"],
					 image: "",
					 optionA: "Define in-out parameter",
					 optionB: "Underscore argument labels (_)",
					 optionC: "Define parameters as optionals",
					 optionD: "You can't do that",
					 questionId: 528,
					 helpText: "If you want a function to modify a parameter’s value, and you want those changes to persist after the function call has ended, define that parameter as an in-out parameter instead. You write an in-out parameter by placing the inout keyword right before a parameter’s type. An in-out parameter has a value that is passed in to the function, is modified by the function, and is passed back out of the function to replace the original value."),
			
			Question(question: ["You can only pass a ... as the argument for an in-out parameter",
								"What should you pass as the argument for an in-out parameter?"],
					 image: "",
					 optionA: "A constant",
					 optionB: "A variable",
					 optionC: "A closure",
					 optionD: "",
					 questionId: 529,
					 helpText: "You can only pass a variable as the argument for an in-out parameter. You cannot pass a constant or a literal value as the argument, because constants and literals cannot be modified. You place an ampersand (&) directly before a variable’s name when you pass it as an argument to an in-out parameter, to indicate that it can be modified by the function."),
			
			Question(question: ["Can in-out parameters have default values?",
								"Can variadic parameters be marked as inout?",
								"Can in-out parameters have default values and variadic parameters be marked as inout?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 530,
					 helpText: "In-out parameters cannot have default values, and variadic parameters cannot be marked as inout."),
			
			Question(question: ["Can we define a constant or variable to be of a function type (Int, Int) -> Int?",
								"Can we define a constant or variable to be of a function type (Double, Double) -> String. Is that true?",
								"Can we define a constant or variable to be of a function type (Bool, Int) -> Bool?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 531,
					 helpText: "You use function types just like any other types in Swift. For example, you can define a constant or variable to be of a function type and assign an appropriate function to that variable: var mathFunction: (Int, Int) -> Int = addTwoInts. This can be read as: “Define a variable called mathFunction, which has a type of ‘a function that takes two Int values, and returns an Int value.’ Set this new variable to refer to the function called addTwoInts.” You can now call the assigned function with the name mathFunction."),
			
			Question(question: ["Can you use a function type as a parameter type for another function?",
								"Can we use a function type such as (Int, Int) -> Int as a parameter type for another function?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 532,
					 helpText: "You can use a function type such as (Int, Int) -> Int as a parameter type for another function. This enables you to leave some aspects of a function’s implementation for the function’s caller to provide when the function is called."),
			
			Question(question: ["Can you use a function type as the return type of another function?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 53200,
					 helpText: "You can use a function type as the return type of another function. You do this by writing a complete function type immediately after the return arrow (->) of the returning function."),
			
			Question(question: ["Can you define functions inside the bodies of other functions?",
								"Can we define nested functions?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 533,
					 helpText: "All of the functions you have encountered so far in this chapter have been examples of global functions, which are defined at a global scope. You can also define functions inside the bodies of other functions, known as nested functions. Nested functions are hidden from the outside world by default, but can still be called and used by their enclosing function."),
			
			Question(question: ["How can nested functions be called and used?",
								"How can we call nested function?"],
					 image: "",
					 optionA: "Through its enclosing function",
					 optionB: "Directly",
					 optionC: "By the in-out parameters",
					 optionD: "It cannot",
					 questionId: 534,
					 helpText: "Nested functions are hidden from the outside world by default, but can still be called and used by their enclosing function. An enclosing function can also return one of its nested functions to allow the nested function to be used in another scope."),
			
			/// Дальше однотипные вопросы с картинками
			/// Если сможешь - добавь формулировок или поменяй некоторые через одну
			
			Question(question: ["If the code compiles, what is output to the console?"],
					 image: "Functions35",
					 optionA: "Hello, Alexey!",
					 optionB: "Hello + Alexey + !",
					 optionC: "Alexey",
					 optionD: "We will get an error",
					 questionId: 535,
					 helpText: "Correct answer: \"Hello, Alexey!\"."),
			
			Question(question: ["If the code compiles, what is output to the console?"],
					 image: "Functions36",
					 optionA: "Hello, Maria!",
					 optionB: "Hello + Maria + !",
					 optionC: "Maria!",
					 optionD: "We will get an error",
					 questionId: 536,
					 helpText: "Correct answer: \"Hello, Maria!\"."),
			
			Question(question: ["If the code compiles, what is output to the console?"],
					 image: "Functions37",
					 optionA: "Hello again, Maria!",
					 optionB: "Hello, Maria!",
					 optionC: "Hello again + Maria + !",
					 optionD: "Compile-time error",
					 questionId: 537,
					 helpText: "Correct answer: \"Hello again, Maria!\"."),
			
			Question(question: ["What will we get into console?"],
					 image: "Functions38",
					 optionA: "hello, world!",
					 optionB: "Nothing",
					 optionC: "12",
					 optionD: "13",
					 questionId: 538,
					 helpText: "Correct answer: \"hello, world!\"."),
			
			Question(question: ["What will we get into console?"],
					 image: "Functions39",
					 optionA: "hello, world и 12",
					 optionB: "hello, world",
					 optionC: "hello, world! и 13",
					 optionD: "Nothing",
					 questionId: 539,
					 helpText: "Correct answer: \"hello, world и 12\". We print the phrase (via print() inside a function), and the return value 12 (the number of characters in our phrase)."),
			
			Question(question: ["If the code compiles, what is output to the console?"],
					 image: "Functions40",
					 optionA: "We will get an error",
					 optionB: "Nothing",
					 optionC: "10",
					 optionD: "",
					 questionId: 540,
					 helpText: "We will get an error. We ignore the argument label (underscore it) of the \"first\" parameter, if we write that argument label while calling the function, the code won't run. Error: Extraneous argument label 'first:' in call."),
			
			Question(question: ["What will we get into console?"],
					 image: "Functions41",
					 optionA: "5",
					 optionB: "12",
					 optionC: "5, 5",
					 optionD: "",
					 questionId: 541,
					 helpText: "Correct answer: 5. When we calling a function, if we are passing a new value to a parameter that has a default value, it changes to the new one."),
			
			Question(question: ["What will we get into console?"],
					 image: "Functions42",
					 optionA: "12",
					 optionB: "5",
					 optionC: "5, 5",
					 optionD: "",
					 questionId: 542,
					 helpText: "Correct answer: 12. When we are declaring a function, any of its parameters can be assigned by default value. If a parameter has a default value, then this parameter can be omitted when we are calling this function."),
			
			Question(question: ["The values in what order will we get into console?"],
					 image: "Functions43",
					 optionA: "107 и 3",
					 optionB: "3 и 107",
					 optionC: "107 и 107",
					 optionD: "We will get an error",
					 questionId: 543,
					 helpText: "Correct answer: 107 и 3. Inside the function, the values of the variables first and second will change, and since they are in-out parameters, the original variables will also receive new values.")
		]
	}
}
