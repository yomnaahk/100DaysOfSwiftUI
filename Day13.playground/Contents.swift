import Cocoa

protocol Vehicle {
    var name: String { get }
      var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle{
    let name = "Car"
    var currentPassengers = 4
    func estimateTime(for distance: Int) -> Int {
       distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }
    
    func openSunroof() {
           print("It's a nice day!")
       }
    
}
struct Bicycle: Vehicle{
    let name = "Bicycle"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
    
    
}


func commute(distance: Int, using vechile: Vehicle){
    if vechile.estimateTime(for: distance) > 100{
        print("That's too slow! I'll try a different vehicle.")
    }else{
        vechile.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}
protocol Shape{
    func area() -> Double
}
struct Circle: Shape{
    var radius: Double
    func area() -> Double{
        3.14 * radius * radius
    }
}

func makeShape() -> some Shape{
    return Circle(radius: 5)
}

extension Int{
    func squared() -> Int{
        return self * self
    }
}

let car = Car()
commute(distance: 100, using: car)
print("The Passengers is \(car.currentPassengers)")

let bike = Bicycle()
commute(distance: 50, using: bike)
print("The name is \(bike.name)")

getTravelEstimates(using: [car, bike], distance: 150)

let s = makeShape()
print("The area is \(s.area())")

let number = 4
print(number.squared())

var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
print(trimmed)

extension String{
    func trimmed() -> String{
        self .trimmingCharacters(in: .whitespacesAndNewlines)
    }
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

struct Book{
    let title: String
    let pageCount: Int
    let readingHours: Int
}
extension Book{
    init(title: String, pageCount: Int) {
         self.title = title
         self.pageCount = pageCount
         self.readingHours = pageCount / 50
     }
}
let lotr = Book(title: "Lord of the Rings", pageCount: 1178)
let pap = Book(title: "Pride and prejedce", pageCount: 900, readingHours: 60)
print(lotr)
print(pap)
print(lyrics.lines.count)

let guests = ["Mario", "Luigi", "Peach"]
extension Collection{
    var isNotEmpty: Bool{
        isEmpty == false
    }
}
if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}



let trimmed2 = quote.trimmed()
print(trimmed2)


//checkPoint 8
protocol Building{
    var rooms: Int {  get }
    var cost: Int {get set}
    var nameAgent: String { get set}
    func salesSummary() -> String
}

struct House: Building{
    var rooms: Int
    var cost: Int
    var nameAgent: String
    
    func salesSummary() -> String {
        "The house has \(rooms) rooms and cost \(cost), nameAgent is \(nameAgent)"
    }
}

struct Office: Building{
    var rooms: Int
    var cost: Int
    var nameAgent: String
    
    func salesSummary() -> String {
        "The office has \(rooms) rooms and cost \(cost), nameAgent is \(nameAgent)"
    }
}

let myHouse = House(rooms: 3, cost: 3000, nameAgent: "AliExpress")
print(myHouse.salesSummary())

let myOffice = Office(rooms: 10, cost: 5000, nameAgent: "AliBaba")
print(myOffice.salesSummary())
