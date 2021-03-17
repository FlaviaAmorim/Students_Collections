//
//  BookTableViewCell.swift
//  FavoriteBooks
//
//  Created by flaviaamorim on 16/03/21.
//

import UIKit

class BookTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var lenghtLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func update(with book: Book) {
        titleLabel.text = book.title
        authorLabel.text = book.author
        genderLabel.text = book.genre
        lenghtLabel.text = book.length
    }
}
