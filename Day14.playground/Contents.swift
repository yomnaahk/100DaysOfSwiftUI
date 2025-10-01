import Cocoa
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]
 
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
} else {
    print("Mario's opposite is not known.")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
if let number = number {
    print(square(number: number))
} else {
    print("No number provided.")
}
