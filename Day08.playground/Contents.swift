import Cocoa
func printTimesTable(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTable(for: 5)
print("--------------")
printTimesTable(for: 10, end: 10)

enum passwordError: Error{
    case short, obvious
}

func checkPassword(_ password: String) throws -> String{
    if password.count < 5 {
        throw passwordError.short
    }
    if password == "12345"{
        throw passwordError.obvious
    }
    if password.count < 8 {
        return "Ok"
    }
    else {
        return "Excellent"
    }
}


let string = "12345"
do{
    let result = try checkPassword(string)
    print("pssword rating : \(result)")
} catch{
    print("There was an error")
}

let password = "12345"
do{
    let result = try checkPassword(password)
    print("Password rating: \(result)")
}catch passwordError.short {
    print("Please use a longer password.")
} catch passwordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

//checkpoint4
enum sqrtError: Error{
    case outOfBounds, noRoot
}

func mySqrt(_ number: Int) throws -> Int{
    if number < 1 || number > 10000 {
        throw sqrtError.outOfBounds
    }
    
        for i in 1...number {
            if i * i == number {
                return i
            }
        }
    
        throw sqrtError.noRoot
    }

let number = -9
do{
    let result = try mySqrt(number)
    print("The sqrt for the \(number) is \(result)")
} catch sqrtError.outOfBounds{
    print("Out Of range")
} catch sqrtError.noRoot {
    print("This is no root")
} catch {
    print("There was an error.")
}
