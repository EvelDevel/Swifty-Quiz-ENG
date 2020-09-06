
//  Created by Евгений Никитин on 30.08.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit
import StoreKit

protocol InAppPurchaseViewControllerDelegate: class {
	func refreshViewAndTableAfterPurchase()
}

class InAppPurchaseViewController: UIViewController {
	@IBOutlet weak var IapSupportLabel: UILabel!
	@IBOutlet weak var IapMainTextLabel: UILabel!
	@IBOutlet weak var IapGoodLuckLabel: UILabel!
	@IBOutlet weak var iapBuyButton: UIButton!

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
		shadow.addBlackButtonShadows([iapBuyButton])
    }

	override func viewDidDisappear(_ animated: Bool) {
		if Game.shared.wePurchasedFullAccess() {
			delegate?.refreshViewAndTableAfterPurchase()
		}
	}
	
	func setTheInterfaceRight() {
		iapBuyButton.setTitle("Unlock for ... or Restore", for: .normal)
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


// MARK: Покупка и ее методы
extension InAppPurchaseViewController: SKProductsRequestDelegate, SKPaymentTransactionObserver {
	
	func fetchProduct() {
		let request = SKProductsRequest(productIdentifiers: ["com.EvelDevel.SwiftyQuizENG.unlock01"])
		request.delegate = self
		request.start()
	}

	@IBAction func didTapBuy(_ sender: Any) {
		
		/// Временное действие для разблокировки доступа на симуляторах
		Game.shared.changeThePurchaseStatus(status: true)
		
		SoundPlayer.shared.playSound(sound: .menuMainButton)
		guard let myProduct = myProduct else {
			return
		}
		if SKPaymentQueue.canMakePayments() {
			let payment = SKPayment(product: myProduct)
			SKPaymentQueue.default().add(self)
			SKPaymentQueue.default().add(payment)
		}
	}

	func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
		if let product = response.products.first {
			myProduct = product
			DispatchQueue.main.async {
				self.iapBuyButton.setTitle("Unlock for \(product.price) \(product.priceLocale.currencySymbol ?? "") or Restore ", for: .normal)
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
}
	
	

