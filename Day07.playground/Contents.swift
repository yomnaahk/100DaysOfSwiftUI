import Cocoa

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}
showWelcome()

func printTimesTables(number: Int){
    for i in 1...12{
        print("\(i) * \(number) = \(i * number)")
    }
}

printTimesTables(number: 5)

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(number: 4, end: 10)


let root = sqrt(169)
print(root)

func rollDcie() -> Int {
 Int.random(in: 1...6)
}
print(rollDcie())

func areStringsSame(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

print(areStringsSame(string1: "abcd", string2: "dcba"))

func getUsers() -> [String] {
    return ["Huda", "Mona"]
}

let users = getUsers()
print("Names: \(users[0]) , \(users[1])")

func fullName() -> [String: String]{
    return [
        "firstName" : "Ali",
        "SecondName": "Mohamed"
    ]
}
let employeeName = fullName()
print("Name is : \(employeeName["firstName", default: "NoName"]) \(employeeName["secondName", default: "NoName"])")

//tuple
func getNameUsingTuple() -> (first: String, second: String) {
    return ("Huda", "Kamle")
}
let nameTuple = getNameUsingTuple()
print("name \(nameTuple.first) \(nameTuple.second)")
let (firstName, _) = getNameUsingTuple()
print("Name: \(firstName)")

func printTimesTables2(for number : Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables2(for: 5)
