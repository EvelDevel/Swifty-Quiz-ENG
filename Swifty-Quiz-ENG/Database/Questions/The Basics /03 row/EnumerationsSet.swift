
//  Created by Евгений Никитин on 11.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 08 - Вопросы (id) с 701 по 800

class EnumerationsSet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: ["You introduce enumerations with the ... keyword",
								"The keyword you can introduce enumerations in your code with"],
					 image: "",
					 optionA: "enum",
					 optionB: "num",
					 optionC: "enumeration",
					 optionD: "struct",
					 questionId: 701,
					 helpText: "You introduce enumerations with the enum keyword and place their entire definition within a pair of braces"),
			
			Question(question: ["An enumeration defines a(n) ... for a group of related values"],
					 image: "",
					 optionA: "Common type",
					 optionB: "Mixed type",
					 optionC: "Array",
					 optionD: "Optional variable",
					 questionId: 702,
					 helpText: "An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code."),
			
			Question(question: ["Must enumerations provide a value for each case of the enumeration?",
								"Must enumerations provide raw values for each case?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "Only raw value",
					 optionD: "",
					 questionId: 703,
					 helpText: "If you are familiar with C, you will know that C enumerations assign related names to a set of integer values. Enumerations in Swift are much more flexible, and don’t have to provide a value for each case of the enumeration. If a value (known as a raw value) is provided for each enumeration case, the value can be a string, a character, or a value of any integer or floating-point type."),
			
			Question(question: ["Can we provide a string raw value for enumeration cases?",
								"Can we provide a character raw value for enumeration cases?",
								"Can we provide a raw value of any integer for enumeration cases?",
								"Can we provide a floating-point type raw value for enumeration cases?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 704,
					 helpText: "If a value (known as a raw value) is provided for each enumeration case, the value can be a string, a character, or a value of any integer or floating-point type."),
			
			Question(question: ["Can we specify associated values of any type for enumeration cases?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 705,
					 helpText: "Enumeration cases can specify associated values of any type to be stored along with each different case value, much as unions or variants do in other languages. You can define a common set of related cases as part of one enumeration, each of which has a different set of values of appropriate types associated with it."),
			
			Question(question: ["Do enumerations support computed properties (to provide additional information about the enumeration’s current value)?",
								"Do enumerations support instance methods (to provide functionality related to the values the enumeration represents)?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 706,
					 helpText: "Enumerations in Swift are first-class types in their own right. They adopt many features traditionally supported only by classes, such as computed properties to provide additional information about the enumeration’s current value, and instance methods to provide functionality related to the values the enumeration represents."),
			
			Question(question: ["Enumerations cannot define initializers. Is that true?",
								"It’s impossible to define initializers to provide an initial case value for enumerations. Is that correct?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 707,
					 helpText: "No, enumerations can define initializers to provide an initial case value."),
			
			Question(question: ["Can enumerations be extended to expand their functionality beyond their original implementation?",
								"Can enumerations conform to protocols to provide standard functionality?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 708,
					 helpText: "Enumerations can be extended to expand their functionality beyond their original implementation; and can conform to protocols to provide standard functionality."),
			
			Question(question: ["The values defined in an enumeration are called...",
								"How do we call the values defined within an enumeration?"],
					 image: "",
					 optionA: "Enumeration cases",
					 optionB: "Enumeration points",
					 optionC: "Enumeration associated values",
					 optionD: "",
					 questionId: 709,
					 helpText: "The values defined in an enumeration are its enumeration cases."),
			
			Question(question: ["Enumerations are composed of separate values. Which keyword do we use to introduce each value?"],
					 image: "",
					 optionA: "case",
					 optionB: "enum",
					 optionC: "switch",
					 optionD: "",
					 questionId: 710,
					 helpText: "You use the case keyword to introduce new enumeration cases."),
			
			Question(question: ["Do Swift enumeration cases have an integer value set by default?",
								"If you have enumeration with 4 cases, do they implicitly equals to 0, 1, 2 and 3?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes, it's called indexes",
					 optionC: "",
					 optionD: "",
					 questionId: 711,
					 helpText: "Swift enumeration cases don’t have an integer value set by default, unlike languages like C and Objective-C. For example, if you have enumeration with 4 cases, they don’t implicitly equal 0, 1, 2 and 3."),
			
			Question(question: ["Like other types in Swift, enumerations names should start with that kind of letter",
								"Enumerations names should start with a ... letter"],
					 image: "",
					 optionA: "Capital letter",
					 optionB: "Small letter",
					 optionC: "It doesn't matter",
					 optionD: "",
					 questionId: 712,
					 helpText: "Each enumeration definition defines a new type. Like other types in Swift, their names (such as CompassPoint and Planet) start with a capital letter. Give enumeration types singular rather than plural names, so that they read as self-evident."),
			
			Question(question: ["Can multiple cases appear on a single line, separated by commas?",
								"Is that correct that we can write comma-separated multiple enumeration cases on a single line?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "Yes, but separated by semicolon",
					 optionD: "",
					 questionId: 713,
					 helpText: "Multiple cases can appear on a single line, separated by commas."),
			
			Question(question: ["How can you set enumeration case value to your enumeration type instance?"],
					 image: "",
					 optionA: "someVar = enumType.caseName",
					 optionB: "someVar = .caseName",
					 optionC: "someVar = caseName",
					 optionD: "someVar = enumType().caseName",
					 questionId: 714,
					 helpText: "Once your instance is declared as your enumeration type instance, you can set it to a different case value using a shorter dot syntax. This makes for highly readable code when working with explicitly typed enumeration values."),
			
			Question(question: ["Must switch statements be exhaustive when considering an enumeration’s cases?",
								"If any case is omitted in a switch statement, the code won't compile. Is that so?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 715,
					 helpText: "A switch statement must be exhaustive when considering an enumeration’s cases. If the case is omitted, this code doesn’t compile, because it doesn’t consider the complete list of enumeration cases. Requiring exhaustiveness ensures that enumeration cases aren’t accidentally omitted."),
			
			Question(question: ["You can provide a ... case to cover any cases that aren’t addressed explicitly",
								"When it isn’t appropriate to provide a case for every enumeration case, you can provide a ... case"],
					 image: "",
					 optionA: "default",
					 optionB: "universal",
					 optionC: "standart",
					 optionD: "",
					 questionId: 716,
					 helpText: "When it isn’t appropriate to provide a case for every enumeration case, you can provide a default case to cover any cases that aren’t addressed explicitly."),
			
			Question(question: ["For some enumerations, it’s useful to have a collection of all of that enumeration’s cases. How can we enable it?"],
					 image: "",
					 optionA: "EnumerationName: CaseIterable",
					 optionB: "EnumerationName: Iterable",
					 optionC: "EnumerationName: AllCases",
					 optionD: "",
					 questionId: 717,
					 helpText: "For some enumerations, it’s useful to have a collection of all of that enumeration’s cases. You enable this by writing : CaseIterable after the enumeration’s name. Swift exposes a collection of all the cases as an allCases property of the enumeration type."),
			
			Question(question: ["What will we get in the console?"],
					 image: "Enumerations15",
					 optionA: "3",
					 optionB: "2",
					 optionC: "",
					 optionD: "",
					 questionId: 718,
					 helpText: "For some enumerations, it’s useful to have a collection of all of that enumeration’s cases. You enable this by writing : CaseIterable after the enumeration’s name. Swift exposes a collection of all the cases as an allCases property of the enumeration type. In the example, you write Beverage.allCases to access a collection that contains all of the cases of the Beverage enumeration. You can use allCases like any other collection—the collection’s elements are instances of the enumeration type, so in this case they’re Beverage values."),
			
			Question(question: ["Can we define enumerations to store associated values of any given type?",
								"Can the associated value types be different for each case of the enumeration?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 719,
					 helpText: "You can define Swift enumerations to store associated values of any given type, and the value types can be different for each case of the enumeration if needed."),
			
			Question(question: ["Can we assign this kind of associated values?"],
					 image: "Enumerations17",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "We will get an error",
					 optionD: "",
					 questionId: 720,
					 helpText: "This can be read as: “Define an enumeration type called Barcode, which can take either a value of upc with an associated value of type (Int, Int, Int, Int), or a value of qrCode with an associated value of type String.” This definition doesn’t provide any actual Int or String values—it just defines the type of associated values that Barcode constants and variables can store when they are equal to Barcode.upc or Barcode.qrCode. You can then create new barcodes using either type: var productBarcode = Barcode.upc(8, 85909, 51226, 3). This example creates a new variable called productBarcode and assigns it a value of Barcode.upc with an associated tuple value of (8, 85909, 51226, 3). You can assign the same product a different type of barcode: productBarcode = .qrCode(\"ABCDEFGHIJKLMNOP\")"),
			
			Question(question: ["Can we replace the original Barcode.upc like in the picture above?"],
					 image: "Enumerations18",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 721,
					 helpText: "The original Barcode.upc and its integer values are replaced by the new Barcode.qrCode and its string value. Constants and variables of type Barcode can store either a .upc or a .qrCode (together with their associated values), but they can store only one of them at any given time."),
			
			Question(question: ["Can we extract each associated value for use within the switch case’s body?",
								"Can we extract each associated value as a constant or as a variable for use within the switch case’s body?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 722,
					 helpText: "You can check the different values using a switch statement. You extract each associated value as a constant (with the let prefix) or a variable (with the var prefix) for use within the switch case’s body."),
			
			Question(question: ["If all of the associated values for an enumeration case are extracted as constants, can you place a single let annotation before the case name?",
								"If all of the associated values for an enumeration case are extracted as variable, can you place a single var annotation before the case name?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 723,
					 helpText: "If all of the associated values for an enumeration case are extracted as constants, or if all are extracted as variables, you can place a single var or let annotation before the case name, for brevity."),
			
			Question(question: ["The difference between raw values and the associated values is that ..."],
					 image: "",
					 optionA: "Raw values must be of the same type",
					 optionB: "Associated values must be of the same type",
					 optionC: "Raw values can be of different types",
					 optionD: "",
					 questionId: 724,
					 helpText: "As an alternative to associated values, enumeration cases can come prepopulated with default values (called raw values), which are all of the same type. Raw values are not the same as associated values. Raw values are set to prepopulated values when you first define the enumeration in your code. The raw value for a particular enumeration case is always the same. Associated values are set when you create a new constant or variable based on one of the enumeration’s cases, and can be different each time you do so."),
			
			Question(question: ["Raw values can be strings, characters, or any of the integer or floating-point number types. Is that correct?",
								"Can raw values be strings, characters, or any of the integer or floating-point number types?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 725,
					 helpText: "Yes, raw values can be strings, characters, or any of the integer or floating-point number types."),
			
			Question(question: ["Does the raw value for a particular enumeration case always stay the same?",
								"Do raw values differ from associated values?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 726,
					 helpText: "Raw values are not the same as associated values. Raw values are set to prepopulated values when you first define the enumeration in your code. The raw value for a particular enumeration case is always the same. Associated values are set when you create a new constant or variable based on one of the enumeration’s cases, and can be different each time you do so."),
			
			Question(question: ["When you’re working with enumerations that store integer raw values, and you don’t explicitly assign a raw value for each case, what will Swift do?"],
					 image: "",
					 optionA: "It will automatically assign them",
					 optionB: "It will do nothing",
					 optionC: "It will close access to these values",
					 optionD: "It will assign them to nil",
					 questionId: 727,
					 helpText: "When you’re working with enumerations that store integer or string raw values, you don’t have to explicitly assign a raw value for each case. When you don’t, Swift automatically assigns the values for you. For example, when integers are used for raw values, the implicit value for each case is one more than the previous case. If the first case doesn’t have a value set, its value is 0."),
			
			Question(question: ["What will be the console output of the following code?"],
					 image: "Enumerations25",
					 optionA: "1",
					 optionB: "0",
					 optionC: "2",
					 optionD: "We will get an error",
					 questionId: 728,
					 helpText: "Correct answer: 1. When integers are used for raw values, the implicit value for each case is one more than the previous case. If the first case doesn’t have a value set, its value is 0."),
			
			Question(question: ["Which property can you access to use the underlying raw value of an enumeration case?"],
					 image: "",
					 optionA: "rawValue",
					 optionB: "raw",
					 optionC: "value",
					 optionD: "defaultValue",
					 questionId: 729,
					 helpText: "You access the raw value of an enumeration case with its rawValue property."),
			
			Question(question: ["With the following code, what would you expect to see?"],
					 image: "Enumerations26",
					 optionA: "0",
					 optionB: "4",
					 optionC: "nil",
					 optionD: "",
					 questionId: 730,
					 helpText: "Planet.mercury has an implicit raw value of 0 while other cases have explicit raw values."),
			
			Question(question: ["What value will we get in console after executing this code?"],
					 image: "Enumerations27",
					 optionA: "north",
					 optionB: "0",
					 optionC: "1",
					 optionD: "nil",
					 questionId: 731,
					 helpText: "When strings are used for raw values, the implicit value for each case is the text of that case’s name."),
			
			Question(question: ["What will the following code print to the console?"],
					 image: "Enumerations29",
					 optionA: "south",
					 optionB: "north",
					 optionC: "east",
					 optionD: "nil",
					 questionId: 732,
					 helpText: "If you define an enumeration with a raw-value type, the enumeration automatically receives an initializer that takes a value of the raw value’s type (as a parameter called rawValue) and returns either an enumeration case or nil. You can then use this initializer to try to create a new instance of the enumeration. In our example, the constant side is of the CompassPoint? type and it has the CompassPoint.south value."),
			
			Question(question: ["What value will we get in console?"],
					 image: "Enumerations30",
					 optionA: "nil",
					 optionB: "west",
					 optionC: "east",
					 optionD: "",
					 questionId: 733,
					 helpText: "If you try to access an enumeration case with a position number that doesn't exist (for instance, in our case, if we implicitly specify the raw values, they will be: 0, 1, 2, 3), then the optional CompassPoint returned by the original initializer value will be nil."),
			
			Question(question: ["Which of these can be defined as enumeration that has another instance of the enumeration as the associated value for one or more of its cases",
								"You can indicate that kind of enumeration with the indirect keyword. It can go either before the enumeration itself or its cases)"],
					 image: "",
					 optionA: "Recursive enumeration",
					 optionB: "Associated enumerations",
					 optionC: "In-out enumerations",
					 optionD: "",
					 questionId: 734,
					 helpText: "A recursive enumeration is an enumeration that has another instance of the enumeration as the associated value for one or more of the enumeration cases. You indicate that an enumeration case is recursive by writing the indirect keyword before it, which tells the compiler to insert the necessary layer of indirection."),
			
			Question(question: ["Can we use a failable initializer for enumerations?",
								"Do enumerations support failable initializers?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 735,
					 helpText: "You can use a failable initializer to select an appropriate enumeration case based on one or more parameters. The initializer can then fail if the provided parameters do not match an appropriate enumeration case."),
			
			Question(question: ["Enumerations with raw values automatically receive a ... initializer"],
					 image: "",
					 optionA: "Failable",
					 optionB: "Designated",
					 optionC: "Convenience",
					 optionD: "Required",
					 questionId: 736,
					 helpText: "Enumerations with raw values automatically receive a failable initializer, init?(rawValue:), that takes a parameter called rawValue of the appropriate raw-value type and selects a matching enumeration case if one is found, or triggers an initialization failure if no matching value exists.")
		]
	}
}
