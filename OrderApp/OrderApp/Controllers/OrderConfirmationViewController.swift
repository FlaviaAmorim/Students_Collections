//
//  OrderConfirmationViewController.swift
//  OrderApp
//
//  Created by flaviaamorim on 22/03/21.
//

import UIKit

class OrderConfirmationViewController: UIViewController {
    let minutesToPrepare: Int
    
    @IBOutlet weak var confirmationLabel: UILabel!
    init?(coder: NSCoder, minutesToPrepare: Int) {
        self.minutesToPrepare = minutesToPrepare
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        confirmationLabel.text = "Thank you for your order! Your wait time is approximately \(minutesToPrepare) minutes."
    }
    

}
