
//  Created by Евгений Никитин on 14.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

// MARK: Как добавлять категории
/// 1. Добавить необходимые кнопки раздела в xib-файле
/// 2. Создать outlet-collection с названием раздела
/// 3. Присвоить этим кнопкам свои tag (по порядку)
/// 4. Добавить элементы этой коллекции в общий массив для работы с UI (функция unificationOfOutlets)
/// 5. Добавить необходимые действия по этим кнопкам в addQuestionsToArray
/// 6. Внутри addQuestionsToArray, в кейсе default - прописать нужный кейс и диапазон
///  - отнимать tag предыдущей, последней кнопки (например, следующим будет [position-39])

import UIKit

protocol CategoriesCellDelegate: class {
    func updateNumberOfQuestions()
    func showAlert()
}

class CategoriesCell: UITableViewCell {
    
    /// Коллекции кнопок, разбиты по разделам,
    /// Так не нужно переделывать один массив при каждом изменении любой кнопки
    var allOutlets: [UIButton] = []
    @IBOutlet var superSets: [UIButton]!
    @IBOutlet var guideQuestions: [UIButton]!
    @IBOutlet var patternsQuestions: [UIButton]!

    weak var delegate: CategoriesCellDelegate?
    private let shadows = ShadowsHelper()
    private var lastPosition = SelectedTopic.shared.topic.topicTag
    
    override func awakeFromNib() {
        super.awakeFromNib()
        unificationOfOutlets()
        addQuestionsToArray(sender: UIButton())
        setFontSize()
        addShadows()
    }
    
    @IBAction func topicButtonPressed(_ sender: UIButton) {
        /// Срабатывание только в случае,
        /// Когда нажимаем на новую кнопку а не активную
        if sender.tag - 1 != self.lastPosition {
            updateTopicButtons()
            addQuestionsToArray(sender: sender)
            delegate?.updateNumberOfQuestions()
            Game.shared.changeContinueStatus()
            sender.backgroundColor = #colorLiteral(red: 0.3792441487, green: 0.7556995749, blue: 0.873203218, alpha: 1)
            sender.setTitleColor(#colorLiteral(red: 0.9566296935, green: 0.9607134461, blue: 0.9688788056, alpha: 1), for: .normal)
            SoundPlayer.shared.playSound(sound: .topicAndSettingsButton)
            lastPosition = sender.tag - 1
        }
    }
    
    override func layoutSubviews() {
        delegate?.showAlert()
    }
}


// MARK: Работа с UI наших аутлетов
extension CategoriesCell {
    
    /// Объединяем аутлеты в пачку
    func unificationOfOutlets() {
        allOutlets.append(contentsOf: superSets)
        allOutlets.append(contentsOf: guideQuestions)
        allOutlets.append(contentsOf: patternsQuestions)
    }
    
    /// Добавляем тени кнопкам
    /// - На некоторых экранах тень под кнопкой не ресайзится (7, XR, 6s, 8)
    /// - DispatchQueue является решением данного бага в нашем случае
    /// - https://stackoverflow.com/questions/49664951/shadow-effect-is-not-displaying-properly-for-uiview
    func addShadows() {
        DispatchQueue.main.async {
            self.shadows.addTopicButtonShadows(self.allOutlets)
        }
    }
    
    /// Рефреш кнопок
    func updateTopicButtons() {
        allOutlets.forEach() { button in
            button.setTitleColor(#colorLiteral(red: 0.2377000451, green: 0.2814793885, blue: 0.335570693, alpha: 1), for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    /// Размер шрифта
    /// Зависящий от размера экрана
    func setFontSize() {
        allOutlets.forEach() { button in
            if UIScreen.main.bounds.size.width > 320 { button.titleLabel?.font = .systemFont(ofSize: 12)
            } else { button.titleLabel?.font = .systemFont(ofSize: 10) }
        }
    }
}


// MARK: Выбор категории
extension CategoriesCell {
    
    /// Загружаем пачку вопросов в наш синглтон массив по нажатию на тему
    func addQuestionsToArray(sender: UIButton) {
        var newQuestionSet: [Question] = SelectedTopic.shared.topic.questionSet
        let position = SelectedTopic.shared.topic.topicTag
        
        switch sender.tag {
            
            // MARK: SUPER SETS
            
        // MARK: 01 row
        /// При добавлении новых сетов со подборками случайных вопросов
        /// Добавлять рефреш в refreshRandomSets() внутри GameViewController
        /// Это обновляет сет, когда мы доиграли сет, чтобы после завершения не играть его снова
        case 1:
            newQuestionSet = TopicOperator.getRandom20()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "20 random questions", tag: 0)
        case 2:
            newQuestionSet = TopicOperator.getRandom50()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "50 random questions", tag: 1)
        case 3:
            newQuestionSet = TopicOperator.getRandom100()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "100 random questions", tag: 2)
        case 4:
            newQuestionSet = TopicOperator.getGuide20()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "20 random - Language Guide", tag: 3)
        case 5:
            newQuestionSet = TopicOperator.getPatterns20()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "20 random - Patterns", tag: 4)
            
            
            // MARK: THE BASICS
            
        // MARK: 01 row
        case 11:
            newQuestionSet = TopicOperator.getQuestionsTheBasics()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "The Basics", tag: 10)
        case 12:
            newQuestionSet = TopicOperator.getQuestionsBasicOperators()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Basic Operators", tag: 11)
        case 13:
            newQuestionSet = TopicOperator.getQuestionsStringAndCharacters()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Strings and Characters", tag: 12)
            
        // MARK: 02 row
        case 14:
            newQuestionSet = TopicOperator.getQuestionsCollectionTypes()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Collection Types", tag: 13)
        case 15:
            newQuestionSet = TopicOperator.getQuestionsControlFlow()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Control Flow", tag: 14)
            
        // MARK: 03 row
        case 16:
            newQuestionSet = TopicOperator.getQuestionsFunctions()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Functions", tag: 15)
        case 17:
            newQuestionSet = TopicOperator.getQuestionsClosures()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Closures", tag: 16)
        case 18:
            newQuestionSet = TopicOperator.getQuestionsEnums()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Enumerations", tag: 17)
            
        // MARK: 04 row
        case 19:
            newQuestionSet = TopicOperator.getQuestionsStructuresAndClasses()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Structures and Classes", tag: 18)
        case 20:
            newQuestionSet = TopicOperator.getQuestionsProperties()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Properties", tag: 19)
        case 21:
            newQuestionSet = TopicOperator.getQuestionsMethods()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Methods", tag: 20)
            
        // MARK: 05 row
        case 22:
            newQuestionSet = TopicOperator.getQuestionsSubscripts()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Subscripts", tag: 21)
        case 23:
            newQuestionSet = TopicOperator.getQuestionsInheritance()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Inheritance", tag: 22)
        case 24:
            newQuestionSet = TopicOperator.getQuestionsInitialization()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Initialization", tag: 23)
            
        // MARK:  06 row
        case 25:
            newQuestionSet = TopicOperator.getQuestionsDeinitialization()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Deinitialization", tag: 24)
        case 26:
            newQuestionSet = TopicOperator.getQuestionsErrorHandling()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Error Handling", tag: 25)
            
        // MARK:  07 row
        case 27:
            newQuestionSet = TopicOperator.getQuestionsOptionalChaining()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Optional Chaining", tag: 26)
        case 28:
            newQuestionSet = TopicOperator.getQuestionsARC()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Automatic Reference Counting", tag: 27)
            
        // MARK:  08 row
        case 29:
            newQuestionSet = TopicOperator.getQuestionsTypeCasting()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Type Casting", tag: 28)
        case 30:
            newQuestionSet = TopicOperator.getQuestionsNestedTypes()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Nested Types", tag: 29)
            
        // MARK:  09 row
        case 31:
            newQuestionSet = TopicOperator.getQuestionsExtensions()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Extensions", tag: 30)
        case 32:
            newQuestionSet = TopicOperator.getQuestionsGenerics()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Generics", tag: 31)
            
        // MARK:  10 row
        case 33:
            newQuestionSet = TopicOperator.getQuestionsProtocols()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Protocols", tag: 32)
        case 34:
            newQuestionSet = TopicOperator.getQuestionsAccessControl()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Access Control", tag: 33)
            
        // MARK:  11 row
        case 35:
            newQuestionSet = TopicOperator.getQuestionsMemorySafety()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Memory Safety", tag: 34)
        case 36:
            newQuestionSet = TopicOperator.getQuestionsAdvancedOperators()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Advanced Operators", tag: 35)
             
            
            // MARK: PATTERNS
            
        // MARK: 01 row
        case 37:
            newQuestionSet = TopicOperator.getQuestionsBasicsAboutPatterns()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Patterns: The Basics", tag: 36)
        case 38:
            newQuestionSet = TopicOperator.getQuestionsCreationalPatterns()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Creational Patterns", tag: 37)
        case 39:
            newQuestionSet = TopicOperator.getQuestionsStructuralPatterns()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Structural Patterns", tag: 38)
            
        // MARK: 02 row
        case 40:
            newQuestionSet = TopicOperator.getQuestionsBehavioralPatterns()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Behavioral Patterns", tag: 39)
        case 41:
            newQuestionSet = TopicOperator.getQuestionsAntipatterns()
            SelectedTopic.shared.saveQuestionSet(newQuestionSet, topic: "Antipatterns", tag: 40)
        
            
        default:
            /// Последнюю выбранную категорию делаем "активной"
            switch position {
            case 0...9:
                superSets[position].backgroundColor = #colorLiteral(red: 0.3792441487, green: 0.7556995749, blue: 0.873203218, alpha: 1)
                superSets[position].setTitleColor(#colorLiteral(red: 0.9566296935, green: 0.9607134461, blue: 0.9688788056, alpha: 1), for: .normal)
            case 10...35:
                guideQuestions[position-10].backgroundColor = #colorLiteral(red: 0.3792441487, green: 0.7556995749, blue: 0.873203218, alpha: 1)
                guideQuestions[position-10].setTitleColor(#colorLiteral(red: 0.9566296935, green: 0.9607134461, blue: 0.9688788056, alpha: 1), for: .normal)
            case 36...40:
                patternsQuestions[position-36].backgroundColor = #colorLiteral(red: 0.3792441487, green: 0.7556995749, blue: 0.873203218, alpha: 1)
                patternsQuestions[position-36].setTitleColor(#colorLiteral(red: 0.9566296935, green: 0.9607134461, blue: 0.9688788056, alpha: 1), for: .normal)
            default:
                print("default case in addQuestionsToArray() in CategoriesCell")
            }
            
        }
    }
}
