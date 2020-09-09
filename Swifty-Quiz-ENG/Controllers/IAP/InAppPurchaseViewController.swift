
//  Created by Евгений Никитин on 30.08.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit
import StoreKit

protocol InAppPurchaseViewControllerDelegate: class {
	func refreshViewAndTableAfterPurchase()
}

// MARK: com.EvelDevel.SwiftyQuizENG.unlock05
// Куплено у следующих тестеров:
// 1. hello@swifty-quiz.online

class InAppPurchaseViewController: UIViewController {
	@IBOutlet weak var IapSupportLabel: UILabel!
	@IBOutlet weak var IapMainTextLabel: UILabel!
	@IBOutlet weak var buyButtonLabel: UIButton!
	@IBOutlet weak var restoreButtonLabel: RoundCornerButton!
	@IBOutlet weak var statusLabel: UILabel!
	
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
		shadow.addBlackButtonShadows([buyButtonLabel])
    }
	
	override func viewDidDisappear(_ animated: Bool) {
		if Game.shared.wePurchasedFullAccess() {
			delegate?.refreshViewAndTableAfterPurchase()
		}
	}
	
	func setTheInterfaceRight() {
		buyButtonLabel.setTitle("Unlock for ...", for: .normal)
		restoreButtonLabel.setTitle("Restore your previous purchase", for: .normal)
		statusLabel.text = InAppStatus.didntPurchasedYet.rawValue
		
		adaptiveInterface.setUnlockPageInterface(view: view,
												 IapSupportLabel: IapSupportLabel,
												 IapMainTextLabel: IapMainTextLabel,
												 getYourFullAccessHeight: getYourFullAccessHeight,
												 topMargin: topMargin,
												 textTopMargin: textTopMargin,
												 labelsTrailingSpace: labelsTrailingSpace,
												 labelsLeadingSpace: labelsLeadingSpace)
	}
}


// MARK: Покупка и ее методы
extension InAppPurchaseViewController: SKProductsRequestDelegate, SKPaymentTransactionObserver {
	
	func fetchProduct() {
		let request = SKProductsRequest(productIdentifiers: ["com.EvelDevel.SwiftyQuizENG.unlock05"])
		request.delegate = self
		request.start()
	}

	@IBAction func restoreButtonTapped(_ sender: Any) {
		SoundPlayer.shared.playSound(sound: .menuMainButton)
		SKPaymentQueue.default().add(self)
		SKPaymentQueue.default().restoreCompletedTransactions()
	}
	
	@IBAction func buyButtonTapped(_ sender: Any) {
		SoundPlayer.shared.playSound(sound: .menuMainButton)
		guard let myProduct = myProduct else {
			return
		}
		if SKPaymentQueue.canMakePayments() {
			let payment = SKPayment(product: myProduct)
			SKPaymentQueue.default().add(self)
			SKPaymentQueue.default().add(payment)
		} else {
			statusLabel.text = InAppStatus.cantBuy.rawValue
		}
	}

	func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
		if let product = response.products.first {
			myProduct = product
			DispatchQueue.main.async {
				self.buyButtonLabel.setTitle("Unlock for \(product.priceLocale.currencySymbol ?? "") \(product.price)", for: .normal)
			}
		}
	}

	func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
		for transaction in transactions {
			switch transaction.transactionState {
			case .purchasing:
				purchasing(transaction)
				break
			case .purchased:
				purchased(transaction)
				break
			case .restored:
				restored(transaction)
				break
			case .failed:
				failed(transaction)
				break
			case .deferred:
				deferred(transaction)
				break
			default:
				defaultCase(transaction)
				break
			}
		}
	}
	
	func purchasing(_ transaction: SKPaymentTransaction) {
		print("Purchasing")
	}
	
	func purchased(_ transaction: SKPaymentTransaction) {
		SKPaymentQueue.default().finishTransaction(transaction)
		SKPaymentQueue.default().remove(self)
		statusLabel.text = InAppStatus.success.rawValue
		SoundPlayer.shared.playSound(sound: .fullAccess)
		Game.shared.openFullAccess()
		print("Transaction Purchased")
	}
	
	func restored(_ transaction: SKPaymentTransaction) {
		SKPaymentQueue.default().finishTransaction(transaction)
		SKPaymentQueue.default().remove(self)
		Game.shared.openFullAccess()
		SoundPlayer.shared.playSound(sound: .fullAccess)
		statusLabel.text = InAppStatus.restore.rawValue
		print("Transaction Restored")
	}
	
	func failed(_ transaction: SKPaymentTransaction) {
		SKPaymentQueue.default().finishTransaction(transaction)
		SKPaymentQueue.default().remove(self)
		print("Transaction Failed")
	}
	
	func deferred(_ transaction: SKPaymentTransaction) {
		SKPaymentQueue.default().finishTransaction(transaction)
		SKPaymentQueue.default().remove(self)
		print("Transaction Deferred")
	}
	
	func defaultCase(_ transaction: SKPaymentTransaction) {
		SKPaymentQueue.default().finishTransaction(transaction)
		SKPaymentQueue.default().remove(self)
		print("Default case")
	}
}
	
	

