import Cocoa

var beatles = ["John", "Paul", "George", "Ringo"]
print(beatles[0])
let numbers = [4, 8, 15, 16, 23, 42]
print(numbers[1])
var temperatures = [25.3, 28.2, 26.4]
print(temperatures[2])


beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")

temperatures.append(33.5)

var scores = Array<Int>()
scores.append(100)
scores.append(90)
scores.append(80)

print(beatles)
print(numbers)
print(temperatures)
print(scores)

var albums = Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums)

var actors = ["Amr", "Huda", "Mai"]
actors.append("Aliaa")
actors.append("Hala")
print(actors)
print("Number of actors \(actors.count)")
actors.remove(at: 2)
print("Now, Number of actors \(actors.count)")
print(actors)

actors.removeAll()
print("Now, Number of actors \(actors.count)")
print(actors)

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))


let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = Array (presidents.reversed())
print(reversedPresidents)


let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee2["name", default: "UnKnown"])
print(employee2["job", default: "UnKnown"])
print(employee2["location", default: "UnKnown"])
print(employee2["password", default: "UnKnown"])
print(employee2["status", default: "UnKnown"])
print(employee2["manager", default: "UnKnown"])


let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
    "Ali" : true
]
print(hasGraduated["Ali", default: false])

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]
print(olympics[2012, default: "Unknown"])


var heights = [String : Int]()
heights["Ziyad"] = 187
heights["Yomna"] = 60
heights["Ali"] = 180
print(heights["Ziyad", default: 0])


var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin"
print(archEnemies["Batman", default: "NotFound"])

var people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)

people.insert("Denzel Washington")
people.insert("Tom Cruise")
people.insert("Nicolas Cage")
people.insert("Samuel L Jackson")
print(people)


enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
print(day)
day = .friday
print(day)
