
//  Created by Евгений Никитин on 09.04.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.


import Foundation

class TopicOperator {
    
    // MARK: Super Sets
    // Руководство, Паттерны
    static func getRandom20() -> [Question] { return RandomFromAll.getQuestions(limit: 20) }
	static func getDemoRandom20() -> [Question] { return RandomFromAll.getDemoQuestions(limit: 20) }
    static func getRandom50() -> [Question] { return RandomFromAll.getQuestions(limit: 50) }
	static func getDemoRandom50() -> [Question] { return RandomFromAll.getDemoQuestions(limit: 50) }
    static func getRandom100() -> [Question] { return RandomFromAll.getQuestions(limit: 100) }
    static func getGuide20() -> [Question] { return RandomFromGuide.getQuestions(limit: 20) }
    static func getPatterns20() -> [Question] { return RandomFromPatterns.getQuestions(limit: 20) }
    
    
    // MARK: THE BASICS
    // MARK: 01 row
    // Основы, Операторы, Строки и символы
    static func getQuestionsTheBasics() -> [Question] { return TheBasicsSet.getQuestions() }
	static func getQuestionsDemoTheBasics() -> [Question] { TheBasicsSet.getDemoQuestions() }
    static func getQuestionsBasicOperators() -> [Question] { return BasicOperatorsSet.getQuestions() }
	static func getQuestionsDemoBasicOperators() -> [Question] { return BasicOperatorsSet.getDemoQuestions() }
    static func getQuestionsStringAndCharacters() -> [Question] { return StringAndCharactersSet.getQuestions() }
	static func getQuestionsDemoStringAndCharacters() -> [Question] { return StringAndCharactersSet.getDemoQuestions() }
    
    // MARK: 02 row
    // Коллекции, Управление потоком
    static func getQuestionsCollectionTypes() -> [Question] { return CollectionTypesSet.getQuestions() }
	static func getQuestionsDemoCollectionTypes() -> [Question] { return CollectionTypesSet.getDemoQuestions() }
    static func getQuestionsControlFlow() -> [Question] { return ControlFlowSet.getQuestions() }
	static func getQuestionsDemoControlFlow() -> [Question] { return ControlFlowSet.getDemoQuestions() }
    
    // MARK: 03 row
    // Функции, Замыкания, Перечисления
    static func getQuestionsFunctions() -> [Question] { return FunctionsSet.getQuestions() }
    static func getQuestionsClosures() -> [Question] { return ClosuresSet.getQuestions() }
    static func getQuestionsEnums() -> [Question] { return EnumerationsSet.getQuestions() }
    
    // MARK: 04 row
    // Структуры и классы, Свойства, Методы
    static func getQuestionsStructuresAndClasses() -> [Question] { return StructuresAndClassesSet.getQuestions() }
    static func getQuestionsProperties() -> [Question] { return PropertiesSet.getQuestions() }
    static func getQuestionsMethods() -> [Question] { return MethodsSet.getQuestions() }
    
    // MARK: 05 row
    // Сабскрипты, Наследование, Инициализация
    static func getQuestionsSubscripts() -> [Question] { return SubscriptsSet.getQuestions() }
    static func getQuestionsInheritance() -> [Question] { return InheritanceSet.getQuestions() }
    static func getQuestionsInitialization() -> [Question] { return InitializationSet.getQuestions() }
    
    // MARK: 06 row
    // Деинициализация, Обработка ошибок
    static func getQuestionsDeinitialization() -> [Question] { return DeinitializationSet.getQuestions() }
    static func getQuestionsErrorHandling() -> [Question] { return ErrorHandlingSet.getQuestions() }
    
    // MARK: 07 row
    // Опциональное связывание, ARC - Автоматический подсчет ссылок
    static func getQuestionsOptionalChaining() -> [Question] { return OptionalChainingSet.getQuestions() }
    static func getQuestionsARC() -> [Question] { return ARCSet.getQuestions() }
    
    // MARK: 08 row
    // Приведение типов, Вложенные типы
    static func getQuestionsTypeCasting() -> [Question] { return TypeCastingSet.getQuestions() }
    static func getQuestionsNestedTypes() -> [Question] { return NestedTypesSet.getQuestions() }
    
    // MARK: 09 row
    // Расширения, Шаблоны
    static func getQuestionsExtensions() -> [Question] { return ExtensionsSet.getQuestions() }
    static func getQuestionsGenerics() -> [Question] { return GenericsSet.getQuestions() }
    
    // MARK: 10 row
    // Протоколы, Контроль доступа
    static func getQuestionsProtocols() -> [Question] { return ProtocolsSet.getQuestions() }
    static func getQuestionsAccessControl() -> [Question] { return AccessControlSet.getQuestions() }
    
    // MARK: 11 row
    // Безопасность хранения, Продвинутые операторы
    static func getQuestionsMemorySafety() -> [Question] { return MemorySafetySet.getQuestions() }
    static func getQuestionsAdvancedOperators() -> [Question] { return AdvancedOperatorsSet.getQuestions() }
    
    
    // MARK: PATTERNS
    // Порождающие и структурные паттерны
    static func getQuestionsBasicsAboutPatterns() -> [Question] { return BasicsAboutPatternsSet.getQuestions() }  
    static func getQuestionsCreationalPatterns() -> [Question] { return CreationalPatternsSet.getQuestions() }  
    static func getQuestionsStructuralPatterns() -> [Question] { return StructuralPatternsSet.getQuestions() }
    
    // Поведенческие и аннтипаттерны
    static func getQuestionsBehavioralPatterns() -> [Question] { return BehavioralPatternsSet.getQuestions() }
    static func getQuestionsAntipatterns() -> [Question] { return AntipatternsSet.getQuestions() }
}
