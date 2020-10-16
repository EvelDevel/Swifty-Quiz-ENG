
//  Created by Евгений Никитин on 09.04.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit

// MARK: Доработки

/// 0. Переписать хранение на RealmSwift

/// 1. Сделать предложение "оценить приложение" в сторе после прохождения первого полного теста (30 демо вопросов)
/// - https://developer.apple.com/documentation/storekit/skstorereviewcontroller/requesting_app_store_reviews
/// - https://developer.apple.com/documentation/storekit/skstorereviewcontroller/2851536-requestreview

/// 2. Подписать в описании приложения в сторе что я из Сибири

/// 3. Сергей Матыскин
/// - Мне кажется было бы удобно возвращаться на вопрос пораньше
/// - Прям после окончания теста добавить кнопку «посмотреть результаты»
/// - Сверху добавить такую стрелочку, типа для тупых, что можно вниз проскроллить 🙂

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	/// For < 13.0 iOS 
	var window: UIWindow?
	
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    // MARK: UISceneSession Lifecycle
	@available(iOS 13.0, *)
	func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

	@available(iOS 13.0, *)
	func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}

