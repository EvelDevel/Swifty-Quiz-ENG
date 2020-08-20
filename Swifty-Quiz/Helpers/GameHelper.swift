
//  Created by Евгений Никитин on 29.06.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit

class GameHelper {
    
    // Обновление сета "случайных" вопросов
    func refreshRandomSet(tag: Int) {
        
        /// Когда выбрана подборка "сет случайных вопросов" (tag от 0 до 9)
        /// Перетасовываем их, когда: переключили тему, завершили текущий сет (доиграли до конца и нажали на "выход")
        /// При любых других раскладах текущий сет случайных вопросов будет повторяться (перезапуск, не доиграли)
        
        if tag == 0 {
            SelectedTopic.shared.saveQuestionSet(RandomSuperSets.getQuestions(limit: 20), topic: "20 случайных вопросов", tag: 0)
        } else if tag == 1 {
            SelectedTopic.shared.saveQuestionSet(RandomSuperSets.getQuestions(limit: 50), topic: "50 случайных вопросов", tag: 1)
        } else if tag == 2 {
            SelectedTopic.shared.saveQuestionSet(RandomSuperSets.getQuestions(limit: 100), topic: "100 случайных вопросов", tag: 2)
        } else if tag == 3 {
            SelectedTopic.shared.saveQuestionSet(GuideRandomSet.getQuestions(limit: 20), topic: "20 вопросов по Руководству", tag: 3)
        } else if tag == 4 {
            SelectedTopic.shared.saveQuestionSet(PatternsRandomSet.getQuestions(limit: 20), topic: "20 вопросов по Паттернам", tag: 4)
        }
    }
    
    
    // MARK: Обновление "победного" текста по завершению игры
    func updatedAlertMessage(score: Double) -> String {
        
        var message = ""
        if score < 35 {
            message = "Не сдавайтесь, пока результат слабый, но у вас все получится!"
        } else if score < 55 {
            message = "Достойный результат, но нужно продолжать работать!"
        } else if score < 85 {
            message = "Уже хорошо! Но вы можете постараться сделать еще лучше!"
        } else {
            message = "Превосходно! Продолжайте в том же духе и по остальным темам!"
        }
        return message
    }
    
    
    // MARK: Алерт незавершенной игры (когда есть, что продолжить)
    func showAlertIfNeeded(_ continueStatus: Bool, _ view: UIViewController) {
        
        if Game.shared.records.count != 0
            && Game.shared.records[0].continueGameStatus == true
            && continueStatus == false
            && Game.shared.showNewGameAlertStatus() != true {
            
            DispatchQueue.main.async {
                let alert = UIAlertController(title: "Есть незавершенная игра", message: "Если вы ответите хотя бы на один вопрос, измените настройки или выберете другую тему, вы потеряете возможность закончить незавершенную игру", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "Продолжить", style: .default, handler: { action in })
                alert.addAction(okAction)
                view.present(alert, animated: true, completion: nil)
            }
            Game.shared.setThatWeShowedAlert()
        }
    }
    
    
    // MARK: Настройка размеров для изображения и текста вопроса
    func setQuestionImageAndTextSizes(_ set: [Question], _ index: Int, _ questionImageView: UIImageView,
                                      _ questionImageHeight: NSLayoutConstraint, _ view: UIView,
                                      _ questionLabel: UILabel, _ buttons: [UIButton]) {
        
        let image = set[index].image
        if  image == "" {
            /// Когда нет изображения
            questionImageView.image = nil
            questionImageHeight.constant = 0
            
            if view.frame.size.width <= 320 {
                questionLabel.font = UIFont.systemFont(ofSize: 17.0, weight: .light)
            } else if view.frame.size.width <= 410 {
                questionLabel.font = UIFont.systemFont(ofSize: 20.0, weight: .light)
            } else {
                questionLabel.font = UIFont.systemFont(ofSize: 22.0, weight: .light)
            }
        } else {
            /// Когда есть изображение
            questionImageView.image = UIImage(named: image)
            
            if view.frame.size.width <= 320 {
                questionLabel.font = UIFont.systemFont(ofSize: 12.0, weight: .light)
                questionImageHeight.constant = 180
            } else if view.frame.size.width <= 410 {
                questionLabel.font = UIFont.systemFont(ofSize: 14.0, weight: .light)
                questionImageHeight.constant = 200
            } else {
                questionLabel.font = UIFont.systemFont(ofSize: 16.0, weight: .light)
                questionImageHeight.constant = 280
            }
        }
        
        /// Размер текста ответов
        for button in buttons {
            if view.frame.size.width <= 320 {
                button.titleLabel?.font = UIFont.systemFont(ofSize: 13.0)
            } else if view.frame.size.width <= 410 {
                button.titleLabel?.font = UIFont.systemFont(ofSize: 15.0)
            } else {
                button.titleLabel?.font = UIFont.systemFont(ofSize: 18.0)
            }
        }
    }
    
    
    // MARK: Установка текста вопроса
    func setQuestionText(_ set: [Question], _ shuffleSettings: Int, _ index: Int, _ questionLabel: UILabel) {
        
        let normal = set[index].question[0]
        let random = set[index].question.shuffled()
        
        if  shuffleSettings == 1 {
            questionLabel.text = random[0]
        } else {
            questionLabel.text = normal
        }
    }
}
