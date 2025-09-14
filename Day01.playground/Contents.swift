import Cocoa
var greeting = "Hello, playground"
var name = "yomna"
print(name)
name = "Ali"
print(name)
name = "Faried"
print(name)

let age = 10
print("age is \(age)")

let actor = "Ali Mohammed"
let nameLength = actor.count
print("Name length is: \(nameLength) ")
print("Actor name in UpperCase: \(actor.uppercased())")

let filename = "paris.jpg"
print(filename.hasSuffix(".jpeg"))
let result = "⭐️ You win! ⭐️"
print(result)

let quote = "Then he tapped a sign saying \"Believe\" and walked away."
print(quote)

let movie = """
A day in
the life of an
Apple engineer
"""
print(movie)
print(movie.hasPrefix("A day"))

let score = 10
let reallyBig = 1000_000_____000
print(reallyBig)
let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)

var counter = 5;
counter += 1
print(counter)
counter *= 2
print(counter)
counter -= 10
print(counter)
counter /= 2
print(counter)

let number = 120
print(number .isMultiple(of: 50))

let sum = 0.1 + 0.2
print(sum)
let a = 1
let b = 2.0
print(a + Int(b))

var rating = 5.0
rating *= 2

var name2 = "Nicolas Cage"
name2 = "John Travolta"
//name2 = 2.5   error can't assign double to string
