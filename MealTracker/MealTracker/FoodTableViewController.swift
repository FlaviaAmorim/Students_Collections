//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by flaviaamorim on 15/03/21.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        
        let breakfast1 = Food(name: "Misto quente", description: "Pão de forma com queijo e presunto na chapa")
        let breakfast2 = Food(name: "Cereal", description: "Cereal integral com leite")
        let breakfast3 = Food(name: "Bolo", description: "Bolo de laranja aprox. 100g")
        
        let lunch1 = Food(name: "Barra de cereal", description: "Barra de ceral com castanha")
        let lunch2 = Food(name: "Maca", description: "Maca gala")
        let lunch3 = Food(name: "Crepioca", description: "Tapioca com ovo")
        
        let dinner1 = Food(name: "Frango grelhado", description: "Arroz, feijão, farofa, salada, frango grelhado")
        let dinner2 = Food(name: "Tilápia", description: "Arroz, feijão, farofa, salada, tilápia")
        let dinner3 = Food(name: "Alcatra", description: "Arroz, feijão, farofa, salada, alcatra")
        
        let breakfast = Meal(name: "Breakfast", food: [breakfast1, breakfast2, breakfast3])
        let lunch = Meal(name: "Lunch", food: [lunch1, lunch2, lunch3])
        let dinner = Meal(name: "Dinner", food: [dinner1, dinner2, dinner3])
        
        return [breakfast, lunch, dinner]
    } 

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        meals[section].food.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return meals[section].name
    }
}
