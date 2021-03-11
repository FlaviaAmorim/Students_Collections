/*:
 ## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, Comparable, and Codable

 Create a `Human` class with two properties: `name` of type `String` and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
class Human: CustomStringConvertible, Equatable, Comparable, Codable {
    
    //Comparable
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
    
    //Equatable
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    
    //CustomStringConvertible
    var description: String {
        return "Name: \(name). Age: \(age)"
    }
    
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let person = Human (name: "Flavia", age: 27)
let person1 = Human (name: "Daniela", age: 14)


/*:
 Make the `Human` class adopt the `CustomStringConvertible` protocol. Print both of your previously initialized `Human` objects.
 */
print(person)
print(person1)

/*:
 Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether your two previously initialized `Human` objects are equal to each other (using `==`). Then print the result of a boolean expression evaluating whether your two previously initialized `Human` objects are not equal to each other (using `!=`).
 */
print(person == person1)
print(person != person1)
/*:
 Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
 */
let person2 = Human(name: "Maria", age: 21)
let person3 = Human(name: "Pedro", age: 21)
let person4 = Human(name: "Camila", age: 26)
let person5 = Human(name: "Joao", age: 33)

let people = [person2, person3, person4, person5]
let sortedPeople = people.sorted(by: <)

/*:
 Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored and print it to the console.
 */
import Foundation

let jsanEncoder = JSONEncoder()
if let jsonData = try? jsanEncoder.encode(person2) {
    if let jsonString = String(data: jsonData, encoding: .utf8) {
    print(jsonString)
    }
}

//: page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
