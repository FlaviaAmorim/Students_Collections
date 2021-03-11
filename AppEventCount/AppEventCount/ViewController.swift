//
//  ViewController.swift
//  AppEventCount
//
//  Created by flaviaamorim on 10/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var launchingLabel: UILabel!
    @IBOutlet weak var configurationForConnecting: UILabel!
    @IBOutlet weak var willConnectLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    
    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        updateView()
    }

    func updateView() {
        
        //Contadores estao no app delegate
        launchingLabel.text = "O app foi carregado \(appDelegate.launchCount) veze(s)."
        configurationForConnecting.text = "A configuracao de conexao rodou \(appDelegate.configurationForConnectingCount) vezes"
        
        //Contadores que estao na View Controller
        willConnectLabel.text = "A conexao da cena ocorreu \(appDelegate.willConnectCount)"
    }

}

