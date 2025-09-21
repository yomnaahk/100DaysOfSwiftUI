import Cocoa

let sayHello = {
    print("Hi, there!")
}

sayHello()

let helloName = { (name :String) -> String in
    "Hi \(name)"
}
print(helloName("Yomna"))

func getUserData(for id: Int) -> String{
    if id == 1999 {
        return helloName("John")
    }else {
        return "User not found"
    }
}
let data: (Int)->String = getUserData
let user = data(1999)
print(user)

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

let reverseTeam = team.sorted {
    return $0 > $1
}
print(reverseTeam)

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})

print(captainFirstTeam)

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
let luckyNumbersResult = luckyNumbers.filter{
    !$0.isMultiple(of: 2)
}.sorted().map{
    "\($0) is a lucky number"
}
for number in luckyNumbersResult{
    print (number)
}
// trailing closures
let captainFirstTeam2 =  team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}
print(captainFirstTeam2)


func makearray(size : Int, generator:() -> Int) ->[Int]{
    var numbers = [Int]()
    for _ in 0..<size{
        numbers.append(generator())
    }
    return numbers
}
print(makearray(size: 8){
    Int.random(in: 1...50)
})

func doImportantTask(first: () -> Void, second: () -> Void, third: () -> Void){
    print("first task ")
    first()
    print("second task ")
    second()
    print("third task ")
    third()
    print("Done!")
}

doImportantTask {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
