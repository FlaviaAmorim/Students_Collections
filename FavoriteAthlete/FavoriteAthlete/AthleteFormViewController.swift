//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by flaviaamorim on 11/03/21.
//

import UIKit

class AthleteFormViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var leagueTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!
    
    
    @IBAction func saveButton(_ sender: Any) {
        guard let name = nameTextField.text,
            let ageString = ageTextField.text,
            let age = Int(ageString),
            let league = leagueTextField.text,
            let team = teamTextField.text else {return}
        
            athlete = Athlete(name: name, age: age, league: league,
            team: team)
        
        performSegue(withIdentifier: "unwindToAthleteTableViewController", sender: self)
    }
    var athlete: Athlete?
    
    init?(coder: NSCoder, athlete: Athlete?) {
        self.athlete = athlete
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    func updateView() {
        guard let athlete = athlete else {
            return
        }
        nameTextField.text = athlete.name
        ageTextField.text = String(athlete.age)
        leagueTextField.text = athlete.league
        teamTextField.text = athlete.team
    }
}
