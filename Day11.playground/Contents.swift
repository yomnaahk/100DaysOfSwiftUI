import Cocoa

struct BankAccount{
    private(set) var funds = 0
    mutating func deposit(amount: Int) {
          funds += amount
      }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

struct School {
    @MainActor static var studentCount = 0
   @MainActor static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

struct Employee{
    let username: String
    let password: String
    
    static let example = Employee(username: "alice", password: "password")
}

//checkpoint6
struct Car{
    let model: String
    let  numberOfSeats: Int
    private(set) var currentGear: Int
    
    init(model: String,  numberOfSeats: Int, currentGear: Int = 1){
           self.model = model
           self.numberOfSeats = numberOfSeats
           self.currentGear = currentGear
    }
    mutating func upGear(){
        if currentGear < 10 {
            currentGear += 1
        }
    }
    
    mutating func downGear(){
        if currentGear > 1 {
            currentGear -= 1
        }
    }
    
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 2000)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

School.add(student: "Taylor Swift")
print(School.studentCount)

print(Employee.example.username)

var car = Car(model: "Toyota", numberOfSeats: 5, currentGear: 1)
car.upGear()
print(car.currentGear) // 2
car.downGear()
print(car.currentGear) // 1
