
//  Created by Евгений Никитин on 30.08.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import UIKit
import StoreKit

protocol InAppViewControllerDelegate: class {
	func refreshViewAndTableAfterPurchase()
}

class InAppViewController: UIViewController {
	
	@IBOutlet weak var backButton: UIButton!
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
		print("Создали наблюдателя :: SKPaymentQueue.default().add(self)")
    }
	
	override func viewDidDisappear(_ animated: Bool) {
		if Game.shared.wePurchasedFullAccess() {
			print("Обновляем таблицу с категориями (после покупки)")
			delegate?.refreshViewAndTableAfterPurchase()
		}
	}
	
	/// > 13.0 iOS Navigation settings
	override func viewWillAppear(_ animated: Bool) {
		if #available(iOS 13.0, *) {
			backButton.isHidden = true
		}
	}
	/// < 13.0 iOS Navigation
	@IBAction func dismissTopicView(_ sender: Any) {
		SoundPlayer.shared.playSound(sound: .menuMainButton)
		dismiss(animated: true, completion: nil)
	}

	
	deinit {
		SKPaymentQueue.default().remove(self)
		print("deinit InAppViewController and remove SKPayment observer")
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
	
	@IBAction func privacyPolicyTapped(_ sender: Any) {
		let urlComponents = URLComponents(string: "https://swifty-quiz.online/privacyen.html")!
		UIApplication.shared.open(urlComponents.url!)
		SoundPlayer.shared.playSound(sound: .menuMainButton)
	}
}


// MARK: Покупка и ее методы
extension InAppViewController: SKProductsRequestDelegate, SKPaymentTransactionObserver {
	
	func fetchProduct() {
		print("fetchProduct :: com.EvelDevel.SwiftyQuizENG.unlockfullaccess01")
		let request = SKProductsRequest(productIdentifiers: ["com.EvelDevel.SwiftyQuizENG.unlockfullaccess01"])
		request.delegate = self
		request.start()
	}

	@IBAction func restoreButtonTapped(_ sender: Any) {
		print("Restore button tapped")
		SoundPlayer.shared.playSound(sound: .menuMainButton)
		SKPaymentQueue.default().restoreCompletedTransactions()
	}
	
	@IBAction func buyButtonTapped(_ sender: Any) {
		SoundPlayer.shared.playSound(sound: .menuMainButton)
		guard let myProduct = myProduct else {
			return
		}
		if SKPaymentQueue.canMakePayments() {
			print("We can make payments")
			let payment = SKPayment(product: myProduct)
			SKPaymentQueue.default().add(payment)
			print("Add payment :: \(payment)")
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
		print("Purchased")
		SKPaymentQueue.default().finishTransaction(transaction)
		print("Finish transaction")
		statusLabel.text = InAppStatuses.success.rawValue
		SoundPlayer.shared.playSound(sound: .fullAccess)
		Game.shared.openFullAccess()
		print("Open full access")
	}
	
	func restored(_ transaction: SKPaymentTransaction) {
		print("Restored")
		SKPaymentQueue.default().finishTransaction(transaction)
		print("Finish transaction")
		Game.shared.openFullAccess()
		print("Open full access")
		SoundPlayer.shared.playSound(sound: .fullAccess)
		statusLabel.text = InAppStatuses.restore.rawValue
	}
	
	func failed(_ transaction: SKPaymentTransaction) {
		print("Transaction Failed")
		SKPaymentQueue.default().finishTransaction(transaction)
		print("Finish transaction")
	}
	
	func deferred(_ transaction: SKPaymentTransaction) {
		print("Transaction Deferred")
		SKPaymentQueue.default().finishTransaction(transaction)
		print("Finish transaction")
	}
	
	func defaultCase(_ transaction: SKPaymentTransaction) {
		print("Default Case")
		SKPaymentQueue.default().finishTransaction(transaction)
		print("Finish transaction")
	}
}
