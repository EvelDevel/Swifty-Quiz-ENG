
//  Created by Евгений Никитин on 25.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK: 31 - Вопросы (id) с 2901 по 3000

class AntipatternsSet {
    static func getQuestions() -> [Question] {
        return [
            Question(question: ["This anti-pattern have a relation between two or more modules which either directly or indirectly depend on each other to function properly"],
                     image: "",
                     optionA: "Circular dependency",
                     optionB: "Constant interface",
                     optionC: "God object",
                     optionD: "",
                     questionId: 2911,
                     helpText: "In software engineering, a circular dependency is a relation between two or more modules which either directly or indirectly depend on each other to function properly. Such modules are also known as mutually recursive."),
			
			Question(question: ["In this anti-pattern we have an object that knows too much or does too much"],
					 image: "",
					 optionA: "God object",
					 optionB: "Coding by exception",
					 optionC: "Magic numbers",
					 optionD: "",
					 questionId: 2911,
					 helpText: "In object-oriented programming, a God object is an object that knows too much or does too much. The God object is an example of an anti-pattern. A common programming technique is to separate a large problem into several smaller problems (a divide and conquer strategy) and create solutions for each of them. Once the smaller problems are solved, the big problem as a whole has been solved. Therefore a given object for a small problem need only know about itself. Likewise, there is only one set of problems an object needs to solve: its own problems."),
			
			Question(question: ["anti-pattern in which behavior in one part of a program varies wildly based on difficult or impossible to identify operations in another part of the program"],
					 image: "",
					 optionA: "Action at a distance",
					 optionB: "Busy waiting",
					 optionC: "Caching failure",
					 optionD: "",
					 questionId: 2911,
					 helpText: "Action at a distance is an anti-pattern (an obfuscation technique) in computer science in which behavior in one part of a program varies wildly based on difficult or impossible to identify operations in another part of the program. The way to avoid the problems associated with action at a distance are a proper design, which avoids global variables and alters data only in a controlled and local manner, or usage of a pure functional programming style with referential transparency."),
			
			Question(question: ["anti-pattern in which programmer keep maintaining the obsolete code \"just in case\"?"],
					 image: "",
					 optionA: "Boat anchor",
					 optionB: "Accidental complexity",
					 optionC: "Coding by exception",
					 optionD: "Soft code",
					 questionId: 2911,
					 helpText: "Boat anchor is an example of an anti-pattern and therefore can cause many problems for people attempting to maintain the program that contains the obsolete code. The key problem comes from the fact that programmers will have a hard time differentiating between obsolete code which doesn't do anything and working code which does. For example, a programmer may be looking into a bug with the program's input handling system, so they search through the code looking for code that links into the input handling API. Obviously if the programmer comes across obsolete input handling code they may well start editing and debugging it, wasting valuable time before they realise that the code that they're working with is never executed and therefore not part of the problem they're trying to solve."),
			
			Question(question: ["Which anti-pattern describes the practice of catching an error or exception, and then continuing without logging, processing, or reporting the error to other parts of the software"],
					 image: "",
					 optionA: "Error hiding",
					 optionB: "Hard code",
					 optionC: "Soft code",
					 optionD: "Lava flow",
					 questionId: 2911,
					 helpText: "In computer programming, error hiding (or error swallowing) is the practice of catching an error or exception, and then continuing without logging, processing, or reporting the error to other parts of the software. Handling errors in this manner is considered bad practice and an anti-pattern in computer programming. In languages with exception handling support, this practice is called exception swallowing."),
			
			Question(question: ["This anti-pattern include embedding data directly into the source code of a program or other executable object, as opposed to obtaining the data from external sources or generating it at runtime"],
					 image: "",
					 optionA: "Hard code",
					 optionB: "Soft code",
					 optionC: "Magic numbers",
					 optionD: "",
					 questionId: 2911,
					 helpText: "Hard coding (also hard-coding or hardcoding) is the software development practice of embedding data directly into the source code of a program or other executable object, as opposed to obtaining the data from external sources or generating it at runtime. Hard-coded data typically can only be modified by editing the source code and recompiling the executable, although it can be changed in memory or on disk using a debugger or hex editor. Data that are hard-coded usually represent unchanging pieces of information, such as physical constants, version numbers and static text elements."),
			
			Question(question: ["In this anti-pattern objects within the program rely on the single object for most of their information and interaction"],
					 image: "",
					 optionA: "God object",
					 optionB: "Hard Code",
					 optionC: "Boat anchor",
					 optionD: "",
					 questionId: 2911,
					 helpText: "Because God object holds so much data and requires so many methods, its role in the program becomes God-like (all-knowing and all-encompassing). Instead of program objects communicating among themselves directly, the other objects within the program rely on the single God object for most of their information and interaction. Since this object is tightly coupled to (referenced by) so much of the other code, maintenance becomes more difficult than it would be in a more evenly divided programming design. Changes made to the object for the benefit of one routine can have unintended effects on other unrelated routines."),
			
			Question(question: ["This anti-pattern refers to code whose layers are so complicated and intertwined that making a change in one layer would necessitate changes in all other layers"],
					 image: "",
					 optionA: "Lasagna code",
					 optionB: "Ravioli code",
					 optionC: "Spaghetti code",
					 optionD: "",
					 questionId: 2911,
					 helpText: "Lasagna code refers to code whose layers are so complicated and intertwined that making a change in one layer would necessitate changes in all other layers. Ravioli code is a term specific to object-oriented programming. It describes code that comprises well-structured classes that are easy to understand in isolation, but difficult to understand as a whole."),
			
			Question(question: ["This anti-pattern refers to a problem in which computer code written under sub-optimal conditions is put into production and added to while still in a developmental state"],
					 image: "",
					 optionA: "Lava flow",
					 optionB: "Loop-switch sequence",
					 optionC: "Shotgun surgery",
					 optionD: "",
					 questionId: 2911,
					 helpText: "In computer programming jargon, lava flow is a problem in which computer code written under sub-optimal conditions is put into production and added to while still in a developmental state. Often, putting the system into production results in a need to maintain backward compatibility (as many additional components now depend on it) with the original, incomplete design. Changes in the development team working on a project often exacerbate lava flows. As workers cycle in and out of the project, knowledge of the purpose of aspects of the system can be lost. Rather than clean up these pieces, subsequent workers work around them, increasing the complexity and mess of the system."),
			
			Question(question: ["This anti-pattern refers to using numbers directly in source code"],
					 image: "",
					 optionA: "Magic number",
					 optionB: "Repeating yourself",
					 optionC: "Shooting the messenger",
					 optionD: "Hard code",
					 questionId: 2911,
					 helpText: "The term magic number or magic constant refers to the anti-pattern of using numbers directly in source code. This has been referred to as breaking one of the oldest rules of programming, dating back to the COBOL, FORTRAN and PL/1 manuals of the 1960s. The use of unnamed magic numbers in code obscures the developers' intent in choosing that number, increases opportunities for subtle errors (e.g. is every digit correct in 3.14159265358979323846 and is this equal to 3.14159?) and makes it more difficult for the program to be adapted and extended in the future. Replacing all significant magic numbers with named constants makes programs easier to read, understand and maintain."),
			
			Question(question: ["This anti-pattern is an input that a programmer believes will never come externally and which activates otherwise hidden functionality"],
					 image: "",
					 optionA: "Magic string",
					 optionB: "Magic number",
					 optionC: "Soft code",
					 optionD: "",
					 questionId: 2911,
					 helpText: "In computer programming, a magic string is an input that a programmer believes will never come externally and which activates otherwise hidden functionality. A user of this program would likely provide input that gives an expected response in most situations. However, if the user does in fact innocently provide the pre-defined input, invoking the internal functionality, the program response is often quite unexpected to the user (thus appearing \"magical\")."),
			
			Question(question: ["This anti-pattern problems include longer compile times and the risk that programmers may accidentally link working code into the defunct code, inadvertently resurrecting it"],
					 image: "",
					 optionA: "Boat anchor",
					 optionB: "Accidental complexity",
					 optionC: "Coding by exception",
					 optionD: "Soft code",
					 questionId: 2911,
					 helpText: "Boat anchor problems include longer compile times and the risk that programmers may accidentally link working code into the defunct code, inadvertently resurrecting it. A recommended solution for dealing with boat anchors in source code is to remove them from the code base and to place them in a separate location so that they can be referred to if necessary, but will not be compiled or be mistaken as \"working\" code. (For example, deleting them, knowing they are stored in the project's source control)"),
			
			Question(question: ["This principle of software development aimed at reducing repetition of software patterns, replacing it with abstractions or using data normalization to avoid redundancy"],
					 image: "",
					 optionA: "Don't repeat yourself",
					 optionB: "Coding by exception",
					 optionC: "Accidental complexity",
					 optionD: "Soft code",
					 questionId: 2911,
					 helpText: "Don't repeat yourself (DRY, or sometimes do not repeat yourself) is a principle of software development aimed at reducing repetition of software patterns, replacing it with abstractions or using data normalization to avoid redundancy. The DRY principle is stated as \"Every piece of knowledge must have a single, unambiguous, authoritative representation within a system\". The principle has been formulated by Andy Hunt and Dave Thomas in their book The Pragmatic Programmer. They apply it quite broadly to include \"database schemas, test plans, the build system, even documentation\". When the DRY principle is applied successfully, a modification of any single element of a system does not require a change in other logically unrelated elements. Additionally, elements that are logically related all change predictably and uniformly, and are thus kept in sync."),
			
			Question(question: ["This anti-pattern refers to obtaining a value or function from some external resource, such as a preprocessor macro, external constant, configuration file, command line argument or database table"],
					 image: "",
					 optionA: "Soft code",
					 optionB: "Hard code",
					 optionC: "Golden hammer",
					 optionD: "",
					 questionId: 2911,
					 helpText: "Softcoding is a computer coding term that refers to obtaining a value or function from some external resource, such as a preprocessor macro, external constant, configuration file, command line argument or database table. It is the opposite of hardcoding, which refers to coding values and functions in the source code.")
        ]
    }
}
