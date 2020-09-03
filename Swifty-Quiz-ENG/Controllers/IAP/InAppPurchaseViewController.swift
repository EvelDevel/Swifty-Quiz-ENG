
//  Created by Евгений Никитин on 30.08.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit
import StoreKit

protocol InAppPurchaseViewControllerDelegate: class {
	func refreshViewAndTableAfterPurchase()
}

class InAppPurchaseViewController: UIViewController, SKProductsRequestDelegate, SKPaymentTransactionObserver {

	@IBOutlet weak var IapSupportLabel: UILabel!
	@IBOutlet weak var IapMainTextLabel: UILabel!
	@IBOutlet weak var IapGoodLuckLabel: UILabel!
	@IBOutlet weak var IapBuyButton: UIButton!
	@IBOutlet weak var IapRestoreButton: RoundCornerButton!

	@IBOutlet weak var getYourFullAccessHeight: NSLayoutConstraint!
	@IBOutlet weak var topMargin: NSLayoutConstraint!
	@IBOutlet weak var labelsTrailingSpace: NSLayoutConstraint!
	@IBOutlet weak var labelsLeadingSpace: NSLayoutConstraint!
	@IBOutlet weak var textTopMargin: NSLayoutConstraint!

	weak var delegate: InAppPurchaseViewControllerDelegate?
	private var myProduct: SKProduct?
	private var adaptiveInterface = AdaptiveInterface()
	let shadow = ShadowsHelper()

	override func viewDidLoad() {
        super.viewDidLoad()
		fetchProduct()
		setTheInterfaceRight()
		shadow.addBlackButtonShadows([IapBuyButton, IapRestoreButton])
    }

	override func viewDidDisappear(_ animated: Bool) {
		if Game.shared.wePurchasedFullAccess() {
			delegate?.refreshViewAndTableAfterPurchase()
		}
	}
	
	// MARK: Покупка и ее методы
	func fetchProduct() {
		/// com.EvelDevel.SwiftyQuizENG.unlockfullaccess
		let request = SKProductsRequest(productIdentifiers: ["com.EvelDevel.SwiftyQuizENG.unlockfullaccess"])
		request.delegate = self
		request.start()
	}

	@IBAction func didTapBuy(_ sender: Any) {
		SoundPlayer.shared.playSound(sound: .menuMainButton)

		/// Это строчку можно раскоменнтировать, чтобы отработать сценарий на симуляторе
		/// Game.shared.changeThePurchaseStatus(status: true)

		/// Проверяем наличие и доступ нашей встроенной покупки
		guard let myProduct = myProduct else {
			return
		}

		/// Проверяем, может ли устройство совершать покупки
		if SKPaymentQueue.canMakePayments() {
			let payment = SKPayment(product: myProduct)
			SKPaymentQueue.default().add(self)
			SKPaymentQueue.default().add(payment)
		}
	}

	@IBAction func didTapRestore(_ sender: Any) {
		SoundPlayer.shared.playSound(sound: .menuMainButton)
	}

	func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
		/// Здесь можно проверять сколько пришло "товаров" из эппстора
		/// Сколько у нас встроенных покупок
		if let product = response.products.first {
			myProduct = product

			DispatchQueue.main.async {
				self.IapBuyButton.setTitle("UNLOCK for \(product.price) \(product.priceLocale.currencySymbol ?? "")", for: .normal)
				self.IapRestoreButton.setTitle("Restore access", for: .normal)
			}
		}
	}

	func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
		for transaction in transactions {
			switch transaction.transactionState {
			case .purchasing:
				break
			case .purchased, .restored:
				Game.shared.changeThePurchaseStatus(status: true)
				SKPaymentQueue.default().finishTransaction(transaction)
				SKPaymentQueue.default().remove(self)
				break
			case .failed, .deferred:
				SKPaymentQueue.default().finishTransaction(transaction)
				SKPaymentQueue.default().remove(self)
				break
			default:
				SKPaymentQueue.default().finishTransaction(transaction)
				SKPaymentQueue.default().remove(self)
				break
			}
		}
	}

	func setTheInterfaceRight() {
		adaptiveInterface.setUnlockPageInterface(view: view,
												 IapSupportLabel: IapSupportLabel,
												 IapMainTextLabel: IapMainTextLabel,
												 IapGoodLuckLabel: IapGoodLuckLabel,
												 getYourFullAccessHeight: getYourFullAccessHeight,
												 topMargin: topMargin,
												 textTopMargin: textTopMargin,
												 labelsTrailingSpace: labelsTrailingSpace,
												 labelsLeadingSpace: labelsLeadingSpace)
	}
}
