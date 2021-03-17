import Foundation

struct Book: CustomStringConvertible, Codable {
    let title: String
    let author: String
    let genre: String
    let length: String
    
    var description: String {
        return "\(title) is written by \(author) in the \(genre) genre and is \(length) pages long"
    }
    
    static var archiveURL: URL {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let archiveURL = documentsDirectory.appendingPathComponent("notes_test")
        .appendingPathExtension("plist")
        
        return archiveURL
    }
    
    static func saveToFile(books: [Book]) {
        let encoder = PropertyListEncoder()
        do {
        let encodedBook = try? encoder.encode(books)
            try encodedBook?.write(to: Book.archiveURL)
        } catch {
            print("Error encoding books: \(error)")
        }
    }

    static func loadFromFile() -> [Book]? {
        guard let bookData = try? Data(contentsOf: Book.archiveURL) else {
            return nil
        }
        do {
            let decoder = PropertyListDecoder()
            let decodedBooks = try decoder.decode([Book].self, from: bookData)
            
            return decodedBooks
        } catch {
            print("Error decoding books: \(error)")
            return nil
        }
    }
}
