import Cocoa

let myname:String = "Yomna"
let age:Int = 21

print("Hello, World! My name is \(myname) and I am \(age) years old.")
//arr
var albums: [String] = ["Red", "Fearless"]
//dic
var user : [String:String] = ["name":"Yomna", "age":"21"]
//set
var books: Set<String> = (["To Kill a Mockingbird", "1984"])

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light


let username: String
username = "@yomnaahk"
print(username)

//checkpoint2
var employess: [String] = ["ali", "kamel", "yomna", "ziyad", "huda", "eman", "kamel", "mohamed", "ali"]
print("number of items in employees array is : \(employess.count)")

var uniqueEmployees: Set<String> = Set(employess)
print("number of unique items in employees array is : \(uniqueEmployees.count)")
