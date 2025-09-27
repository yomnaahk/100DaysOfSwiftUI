import Cocoa
class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, \n but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

class Vehicle{
    let isElectric: Bool
    init(isElectric: Bool){
        self.isElectric = isElectric
    }
}

class Car: Vehicle{
    let isConvertible: Bool
    init(isElectric: Bool,  isConvertible: Bool){
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}
class User{
    var username = "nonome"
}

class UserOrignal {
    var username = "Anonymous"

    func copy() -> UserOrignal {
        let user = UserOrignal()
        user.username = username
        return user
    }
}

class Person {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = Person(id: i)
    print("User \(user.id): I'm in control!")
}


var persons = [Person]()

for i in 1...3 {
    let person = Person(id: i)
    print("Person \(person.id): I'm in control!")
    persons.append(person)
}

class User3 {
    var name = "Paul"
}

let user3 = User3()
user3.name = "Taylor"
print(user3.name)

var user4 = User3()
user4.name = "Taylor"
user4 = User3()
print(user4.name)

print("Loop is finished!")
persons.removeAll()
print("Array is clear!")

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()

let teslaX = Car(isElectric: true, isConvertible: false)

var user1 = User()
var user2 = user1
user2.username = "Taylor"
print(user1.username)
print(user2.username)

//checkPoint7
class Animal{
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    func printAnimalInfo() {
        print("it has \(legs) legs")
    }
}

class Dog: Animal{
   
    override func printAnimalInfo() {
        print("I am a dog")
    }
    
    func speak(){
        print("The Dog Barking")
    }
}

class Cat: Animal{
    var isTame: Bool
     init(legs: Int, isTame: Bool) {
         self.isTame = isTame
        super.init(legs: legs)
    }
    override func printAnimalInfo() {
        print("I am a cat")
    }
    
    func speak(){
        print("The Cat Meowing")
    }
}

class Corgi: Dog{
    override func printAnimalInfo() {
        print("I am a Corgi")
    }
    override func speak() {
        print("The Corgi says: Woof woof!")
    }
}

class Poodle: Dog{
    override func printAnimalInfo() {
        print("I am a Poodle")
    }
    override func speak() {
         print("The Poodle says: Yap yap!")
     }
}

class Persian: Cat{
    override init(legs: Int, isTame: Bool) {
        super.init(legs: legs, isTame: isTame)
    }
    override func printAnimalInfo() {
        print("I am a Persian")
    }
    override func speak(){
        print("The Persian Meowing")
    }
}

class Lion: Cat{
    override init(legs: Int, isTame: Bool) {
        super.init(legs: legs, isTame: isTame)
    }
    override func printAnimalInfo() {
        print("I am a Lion")
    }
    
    override func speak(){
        print("The Lion Meowing")
    }
}
