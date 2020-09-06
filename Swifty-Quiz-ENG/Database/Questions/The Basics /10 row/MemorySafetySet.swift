
//  Created by Евгений Никитин on 12.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 25 - Вопросы (id) с 2401 по 2450

class MemorySafetySet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: ["Does Swift ensures that variables are initialized before they’re used?",
								"Does Swift ensures that memory isn’t accessed after it’s been deallocated?",
								"Does Swift ensures that array indices are checked for out-of-bounds errors?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2401,
					 helpText: "By default, Swift prevents unsafe behavior from happening in your code. For example, Swift ensures that variables are initialized before they’re used, memory isn’t accessed after it’s been deallocated, and array indices are checked for out-of-bounds errors."),
			
			Question(question: ["Does Swift guarantee that multiple accesses to the same memory area won't cause a conflict?",
								"Does Swift manages memory automatically?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2402,
					 helpText: "Swift makes sure that multiple accesses to the same area of memory don’t conflict, by requiring code that modifies a location in memory to have exclusive access to that memory. Because Swift manages memory automatically, most of the time, you don’t have to think about accessing memory at all."),
			
			Question(question: ["If you have conflicting access to memory from within a single thread, does Swift guarantee that you’ll get an error at compile time?",
								"If you have conflicting access to memory from within a single thread, Swift guarantees that you’ll get an error at runtime?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2403,
					 helpText: "If you’ve written concurrent or multithreaded code, conflicting access to memory might be a familiar problem. However, the conflicting access discussed here can happen on a single thread and doesn’t involve concurrent or multithreaded code. If you have conflicting access to memory from within a single thread, Swift guarantees that you’ll get an error at either compile time or runtime. For multithreaded code, use \"Thread Sanitizer\" to help detect conflicting access across threads."),
			
			Question(question: ["How many characteristics of memory access are there in Swift?"],
					 image: "",
					 optionA: "Three",
					 optionB: "Two",
					 optionC: "One",
					 optionD: "Four",
					 questionId: 2404,
					 helpText: "There are three characteristics of memory access to consider in the context of conflicting access: whether the access is a read or a write, the duration of the access, and the location in memory being accessed. Specifically, a conflict occurs if you have two accesses that meet all of the following conditions: At least one is a write access. They access the same location in memory. Their durations overlap."),
			
			Question(question: ["What is the difference between a read and write access?",
								"Difference between a read and write access is that ___",
								"What is the difference between write and read access?"],
					 image: "",
					 optionA: "Write changes the memory location",
					 optionB: "Read changes the memory location",
					 optionC: "There is no difference",
					 optionD: "",
					 questionId: 2405,
					 helpText: "The difference between a read and write access is usually obvious: a write access changes the location in memory, but a read access doesn’t. The location in memory refers to what is being accessed — for example, a variable, constant, or property."),
			
			Question(question: ["What are the types of memory access duration?",
								"There are two types of memory access duration, what are they called?",
								"Choose two correct kinds of memory access in Swift"],
					 image: "",
					 optionA: "Instantaneous or Long-term",
					 optionB: "Fast or Long",
					 optionC: "Slow or Fast",
					 optionD: "Fast & Furious",
					 questionId: 2406,
					 helpText: "The duration of a memory access is either instantaneous or long-term. An access is instantaneous if it’s not possible for other code to run after that access starts but before it ends. By their nature, two instantaneous accesses can’t happen at the same time. Most memory access is instantaneous. However, there are several ways to access memory, called long-term accesses, that span the execution of other code. The difference between instantaneous access and long-term access is that it’s possible for other code to run after a long-term access starts but before it ends, which is called overlap. A long-term access can overlap with other long-term accesses and instantaneous accesses."),
			
			Question(question: ["Can two instantaneous accesses happen at the same time?",
								"Two instantaneous accesses can happen at the same time. Is that true?"],
					 image: "",
					 optionA: "No",
					 optionB: "Yes",
					 optionC: "",
					 optionD: "",
					 questionId: 2407,
					 helpText: "By their nature, two instantaneous accesses can’t happen at the same time."),
			
			Question(question: ["It’s possible for other code to run after a long-term access starts. Is that true?",
								"Through overlap we can run other code when a long-term access starts. Is that so?",
								"A long-term access can overlap with other long-term accesses and instantaneous accesses. Is that true?"],
					 image: "",
					 optionA: "Yes",
					 optionB: "No",
					 optionC: "",
					 optionD: "",
					 questionId: 2408,
					 helpText: "The difference between instantaneous access and long-term access is that it’s possible for other code to run after a long-term access starts but before it ends, which is called overlap. A long-term access can overlap with other long-term accesses and instantaneous accesses."),
			
			Question(question: ["Which access does a function have to all of its in-out parameters?",
								"What kind of access does a function have to all of its in-out parameters?"],
					 image: "",
					 optionA: "Long-term write access",
					 optionB: "Instantaneous read access",
					 optionC: "Long-term read access",
					 optionD: "Instantaneous write access",
					 questionId: 2409,
					 helpText: "A function has long-term write access to all of its in-out parameters. The write access for an in-out parameter starts after all of the non-in-out parameters have been evaluated and lasts for the entire duration of that function call. If there are multiple in-out parameters, the write accesses start in the same order as the parameters appear."),
			
			Question(question: ["What will happen after running following code?"],
					 image: "MemorySafety10",
					 optionA: "Accesses conflict",
					 optionB: "Successful execution",
					 optionC: "Nothing",
					 optionD: "",
					 questionId: 2410,
					 helpText: "You can’t access the original variable that was passed as in-out, even if scoping rules and access control would otherwise permit it—any access to the original creates a conflict. In our code, stepSize is a global variable, and it is normally accessible from within increment(_:). However, the read access to stepSize overlaps with the write access to number. Both number and stepSize refer to the same location in memory. The read and write accesses refer to the same memory and they overlap, producing a conflict. One way to solve this conflict is to make an explicit copy of stepSize."),
			
			Question(question: ["How can you solve access conflict with in-out parameters of a function?"],
					 image: "",
					 optionA: "Make an explicit copy",
					 optionB: "Pass variable without &",
					 optionC: "Deferred function call",
					 optionD: "",
					 questionId: 2411,
					 helpText: "One way to solve the access conflict with in-out parameters is to make an explicit copy of your variable, and then passing this copy when you call the function."),
			
			Question(question: ["What will happen after running the following code?"],
					 image: "MemorySafety12",
					 optionA: "Successful execution",
					 optionB: "Accesses conflict",
					 optionC: "Compile-time error",
					 optionD: "Nothing",
					 questionId: 2412,
					 helpText: "The balance(_:_:) function modifies its two parameters to divide the total value evenly between them. Calling it with playerOneScore and playerTwoScore as arguments doesn’t produce a conflict — there are two write accesses that overlap in time, but they access different locations in memory.")
		]
	}
}
