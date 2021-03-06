
//  Created by Евгений Никитин on 12.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 12 - Вопросы (id) с 1101 по 1200

class SubscriptsSet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: ["Can classes define subscripts, which are shortcuts for accessing the member elements of a collection?",
								"Can structures define subscripts, which are shortcuts for accessing the member elements of a collection or a list?",
								"Can enumerations define subscripts, which are shortcuts for accessing the member elements of a sequence?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1102,
					 helpText: "Classes, structures, and enumerations can define subscripts, which are shortcuts for accessing the member elements of a collection, list, or sequence. You use subscripts to set and retrieve values by index without needing separate methods for setting and retrieval."),
			
			Question(question: ["You can access elements in an Array instance by their ...",
								"Which of these do you need to access an element in an Array instance?",
								"What do we need to write in square braces to access elements in an Array instance: someArray[...]?"],
					 image: "",
					 optionA: "index",
					 optionB: "name",
					 optionC: "key",
					 optionD: "value",
					 questionId: 1103,
					 helpText: "You access elements in an Array instance as someArray[index] and elements in a Dictionary instance as someDictionary[key]."),
			
			Question(question: ["You can access elements in a Dictionary instance by their ...",
								"Choose from the options below the one that you use to access elements in a Dictionary instance.",
								"What do we need to write in square braces to access elements in a Dictionary instance: someDictionary[...]"],
					 image: "",
					 optionA: "key",
					 optionB: "name",
					 optionC: "index",
					 optionD: "value",
					 questionId: 1104,
					 helpText: "You access elements in an Array instance as someArray[index] and elements in a Dictionary instance as someDictionary[key]."),
			
			Question(question: ["Can you define multiple subscripts for a single type?",
								"You can define multiple subscripts for a single type. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1105,
					 helpText: "You can define multiple subscripts for a single type, and the appropriate subscript overload to use is selected based on the type of index value you pass to the subscript. Subscripts are not limited to a single dimension, and you can define subscripts with multiple input parameters to suit your custom type’s needs."),
			
			Question(question: ["Is that correct that subscripts are limited to a single dimension?",
								"Are subscripts limited to a single dimension?",
								"You can't define subscripts with multiple input parameters. Is that true?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 1106,
					 helpText: "You can define multiple subscripts for a single type, and the appropriate subscript overload to use is selected based on the type of index value you pass to the subscript. Subscripts are not limited to a single dimension, and you can define subscripts with multiple input parameters to suit your custom type’s needs."),
			
			Question(question: ["Is the subscript syntax similar to both instance method syntax and computed property syntax?",
								"Subscript syntax is similar to both instance method syntax and computed property syntax. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1107,
					 helpText: "Subscripts enable you to query instances of a type by writing one or more values in square brackets after the instance name. Their syntax is similar to both instance method syntax and computed property syntax. You write subscript definitions with the subscript keyword, and specify one or more input parameters and a return type, in the same way as instance methods."),
			
			Question(question: ["The keyword that is used to determine a subscript",
								"Which keyword is used to introduce a subscript?",
								"Choose the keyword you use to define a subscript"],
					 image: "",
					 optionA: "subscript",
					 optionB: "static",
					 optionC: "public",
					 optionD: "key",
					 questionId: 1108,
					 helpText: "You write subscript definitions with the subscript keyword, and specify one or more input parameters and a return type, in the same way as instance methods."),
			
			Question(question: ["Can the subscripts have getter and setter?",
								"Can subscripts be read-write or read-only?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1109,
					 helpText: "Unlike instance methods, subscripts can be read-write or read-only. This behavior is communicated by a getter and setter in the same way as for computed properties."),
			
			Question(question: ["What will be the type of newValue?"],
					 image: "Subscripts10",
					 optionA: "Int",
					 optionB: "Int?",
					 optionC: "String",
					 optionD: "",
					 questionId: 1110,
					 helpText: "The type of newValue is the same as the return value of the subscript. As with computed properties, you can choose not to specify the setter’s (newValue) parameter."),
			
			Question(question: ["It’s not required to manually provide a default parameter for your setter because Swift can do it automatically. How will the default parameter be called in this case?",
								"A default parameter called ... is provided to your setter if you do not provide one yourself"],
					 image: "",
					 optionA: "newValue",
					 optionB: "value",
					 optionC: "setValue",
					 optionD: "",
					 questionId: 1111,
					 helpText: "A default parameter called newValue is provided to your setter if you do not provide one yourself."),
			
			Question(question: ["Can you simplify the declaration of a read-only subscript by removing the get keyword?",
								"Can you simplify the declaration of a read-only subscript by removing the get keyword and its braces?",
								"You can simplify the declaration of a read-only subscript by removing the get keyword and its braces. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1112,
					 helpText: "As with read-only computed properties, you can simplify the declaration of a read-only subscript by removing the get keyword and its braces: subscript(index: Int) -> Int { // Return an appropriate subscript value here. }"),
			
			Question(question: ["What will we get in the console after executing the following code?"],
					 image: "Subscripts13",
					 optionA: "18",
					 optionB: "6",
					 optionC: "3",
					 optionD: "We'll get an error",
					 questionId: 1113,
					 helpText: "In this example, a new instance of TimesTable is created to represent the three-times-table. This is indicated by passing a value of 3 to the structure’s initializer as the value to use for the instance’s multiplier parameter. You can query the threeTimesTable instance by calling its subscript, as shown in the call to threeTimesTable[6]. This requests the sixth entry in the three-times-table, which returns a value of 18, or 3 times 6."),
			
			Question(question: ["What will we get in the console after running this code?"],
					 image: "Subscripts15",
					 optionA: "Four",
					 optionB: "Three",
					 optionC: "Two",
					 optionD: "We'll get an error",
					 questionId: 1114,
					 helpText: "Correct answer: Four. This example defines a variable called numberOfLegs and initializes it with a dictionary literal containing three key-value pairs. The type of the numberOfLegs dictionary is inferred to be [String: Int]. After creating the dictionary, this example uses subscript assignment to add a String key of \"bird\" and an Int value of 2 to the dictionary."),
			
			Question(question: ["Does the dictionary type uses an optional subscript type?",
								"Not every dictionary key must have a value. Is that true?",
								"Can we delete a value for a dictionary key by assigning a nil value for that key?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1115,
					 helpText: "Swift’s Dictionary type implements its key-value subscripting. The Dictionary type uses an optional subscript type to model the fact that not every key will have a value, and to give a way to delete a value for a key by assigning a nil value for that key."),
			
			Question(question: ["What number of input parameters can subscripts take?"],
					 image: "",
					 optionA: "Any",
					 optionB: "Less than 5",
					 optionC: "Less than 3",
					 optionD: "One",
					 questionId: 1116,
					 helpText: "Subscripts can take any number of input parameters, and these input parameters can be of any type. Subscripts can also return a value of any type."),
			
			Question(question: ["Is that correct that subscripts can take only certain types of input parameters?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 1117,
					 helpText: "Subscripts can take any number of input parameters, and these input parameters can be of any type. Subscripts can also return a value of any type."),
			
			Question(question: ["Can subscripts return a value of any type?",
								"Subscripts can return values of any type. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 1118,
					 helpText: "Subscripts can take any number of input parameters, and these input parameters can be of any type. Subscripts can also return a value of any type."),
			
			Question(question: ["Can subscripts use in-out parameters?",
								"Is the number of parameters you can provide in subscripts limited in Swift?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 1119,
					 helpText: "Like functions, subscripts can take a varying number of parameters and provide default values for their parameters. However, unlike functions, subscripts can’t use in-out parameters."),
			
			Question(question: ["How many subscript implementations can a class and a structure provide?",
								"Classes and structures can provide this many subscript implementations"],
					 image: "",
					 optionA: "As many as needed",
					 optionB: "Less than five",
					 optionC: "Two for classes and five for structures",
					 optionD: "",
					 questionId: 1120,
					 helpText: "A class or structure can provide as many subscript implementations as it needs, and the appropriate subscript to be used will be inferred based on the types of the value or values that are contained within the subscript brackets at the point that the subscript is used. "),
			
			Question(question: ["Definition of multiple subscripts is known as ..."],
					 image: "",
					 optionA: "Subscript overloading",
					 optionB: "Subscript overdrafting",
					 optionC: "Mass subscripting",
					 optionD: "Subscriptitution",
					 questionId: 1121,
					 helpText: "Definition of multiple subscripts is known as subscript overloading."),
			
			Question(question: ["Subscript can take only one input parameter. Is that true?",
								"Is that true that we are not allowed to define several parameters in a subscript?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 1122,
					 helpText: "While it is most common for a subscript to take a single parameter, you can also define a subscript with multiple parameters if it is appropriate for your type.")
		]
	}
}
