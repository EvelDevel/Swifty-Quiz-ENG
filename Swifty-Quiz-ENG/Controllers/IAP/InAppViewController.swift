
//  Created by Евгений Никитин on 30.08.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit
import StoreKit

protocol InAppViewControllerDelegate: class {
	func refreshViewAndTableAfterPurchase()
}

class InAppViewController: UIViewController {
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

	weak var delegate: InAppViewControllerDelegate?
	private var myProduct: SKProduct?
	private var adaptiveInterface = AdaptiveInterface()
	let shadow = ShadowsHelper()

	override func viewDidLoad() {
        super.viewDidLoad()
		fetchProduct()
		setTheInterfaceRight()
		shadow.addBlackButtonShadows([buyButtonLabel])
		SKPaymentQueue.default().add(self)
    }
	
	override func viewDidDisappear(_ animated: Bool) {
		if Game.shared.wePurchasedFullAccess() {
			delegate?.refreshViewAndTableAfterPurchase()
		}
	}
	
	func setTheInterfaceRight() {
		buyButtonLabel.setTitle("Unlock for ...", for: .normal)
		restoreButtonLabel.setTitle("Restore your previous purchase", for: .normal)
		statusLabel.text = InAppStatuses.didntPurchasedYet.rawValue
		
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
extension InAppViewController: SKProductsRequestDelegate, SKPaymentTransactionObserver {
	
	func fetchProduct() {
		let request = SKProductsRequest(productIdentifiers: ["com.EvelDevel.SwiftyQuizENG.unlockfullaccess01"])
		request.delegate = self
		request.start()
	}

	@IBAction func restoreButtonTapped(_ sender: Any) {
		SoundPlayer.shared.playSound(sound: .menuMainButton)
		SKPaymentQueue.default().restoreCompletedTransactions()
	}
	
	@IBAction func buyButtonTapped(_ sender: Any) {
		SoundPlayer.shared.playSound(sound: .menuMainButton)
		guard let myProduct = myProduct else {
			return
		}
		if SKPaymentQueue.canMakePayments() {
			let payment = SKPayment(product: myProduct)
			SKPaymentQueue.default().add(payment)
		} else {
			statusLabel.text = InAppStatuses.cantBuy.rawValue
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
		statusLabel.text = InAppStatuses.success.rawValue
		SoundPlayer.shared.playSound(sound: .fullAccess)
		Game.shared.openFullAccess()
		print("Purchased")
	}
	
	func restored(_ transaction: SKPaymentTransaction) {
		SKPaymentQueue.default().finishTransaction(transaction)
		Game.shared.openFullAccess()
		SoundPlayer.shared.playSound(sound: .fullAccess)
		statusLabel.text = InAppStatuses.restore.rawValue
		print("Restored")
	}
	
	func failed(_ transaction: SKPaymentTransaction) {
		SKPaymentQueue.default().finishTransaction(transaction)
		print("Transaction Failed")
	}
	
	func deferred(_ transaction: SKPaymentTransaction) {
		SKPaymentQueue.default().finishTransaction(transaction)
		print("Transaction Deferred")
	}
	
	func defaultCase(_ transaction: SKPaymentTransaction) {
		SKPaymentQueue.default().finishTransaction(transaction)
		print("Default Case")
	}
}
