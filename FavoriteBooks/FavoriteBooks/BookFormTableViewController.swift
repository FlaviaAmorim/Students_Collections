//
//  BookFormTableViewController.swift
//  FavoriteBooks
//
//  Created by flaviaamorim on 16/03/21.
//

import UIKit

class BookFormTableViewController: UITableViewController {
    
    @IBOutlet weak var titleTextLabel: UITextField!
    @IBOutlet weak var authorTextLabel: UITextField!
    @IBOutlet weak var genderTextLabel: UITextField!
    @IBOutlet weak var lengthTextLabel: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        guard let title = titleTextLabel.text,
            let author = authorTextLabel.text,
            let genre = genderTextLabel.text,
            let length = lengthTextLabel.text else {return}
        
        book = Book(title: title, author: author, genre: genre, length: length)
        performSegue(withIdentifier: "UnwindToBookTable", sender: self)
    }
    
    var book: Book?
    
    init?(coder: NSCoder, book: Book?) {
        self.book = book
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        self.book = nil
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    func updateView() {
        guard let book = book else {return}
        
        titleTextLabel.text = book.title
        authorTextLabel.text = book.author
        genderTextLabel.text = book.genre
        lengthTextLabel.text = book.length
    }
}
