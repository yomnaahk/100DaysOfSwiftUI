import Cocoa

struct Album{
    let title: String
    let artist: String
    let year: Int
    
    func printAlbumInfo(){
        print("\(title) by \(artist), \(year)")
    }
}

let album1 = Album(title: "Wings", artist:  "BTS", year: 2016)
album1.printAlbumInfo()

struct Employee{
    let name: String
    var vacationRemaining: Int
    mutating func takeVacation(days: Int){
        if vacationRemaining > days{
            vacationRemaining -= days
            print("I'm going on Vacation!")
            print("Days remaining: \(vacationRemaining)")
        }else{
            print("Oops! There aren't enough days remaining.")
        }
    }
    
}
var employee = Employee(name: "John", vacationRemaining: 20)
employee.takeVacation(days: 5)
print(employee.vacationRemaining)

struct student{
    let name: String
    var vacationAllocted = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int{
        get{
            vacationAllocted - vacationTaken
        } set{
            vacationAllocted = vacationTaken + newValue
        }
        //return vacationAllocted - vacationTaken
    }
}

var student1 = student(name: "Ali", vacationAllocted: 20)
student1.vacationTaken += 5
print("Vacation remaining: \(student1.vacationRemaining)")
student1.vacationTaken += 12
print("Vacation remaining: \(student1.vacationRemaining)")

struct Game {
    var score = 0
}

var game = Game()
game.score += 10
print("Score is now \(game.score)")
game.score -= 3
print("Score is now \(game.score)")
game.score += 1


struct GameUsingObserver{
    var score = 0{
        didSet{
            print("Score now = \(score)")
        }
    }
}

var gameUsingObserver = GameUsingObserver()
gameUsingObserver.score += 10
gameUsingObserver.score -= 3
gameUsingObserver.score += 1


struct App {
    var contacts = [String](){
        willSet{
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        didSet {
                  print("There are now \(contacts.count) contacts.")
                  print("Old value was \(oldValue)")
              }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

struct Player{
    let name: String
    let number: Int
    
    init(name: String){
        self.name = name
        number = Int.random(in: 1...99)
    }
}
let player = Player(name: "Adrian")
print(player.number)
