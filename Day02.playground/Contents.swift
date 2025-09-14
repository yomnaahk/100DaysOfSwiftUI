import Cocoa

let goodDogs = true
var gameOver = false
print(gameOver)  //false
gameOver.toggle()
print(gameOver)  // true

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)  //true
isAuthenticated = !isAuthenticated
print(isAuthenticated)   //false


let firstPart = "Hello, "
let secondPart = "world!"
var greeting = firstPart + secondPart
print(greeting)


let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)


let luggageCode = "1" + "2" + "3" + "4" + "5"
print(luggageCode)

let name = "Huda"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

let number = 11
let missionMessage = "Apollo " + String(number) + " landed on the moon."
print(missionMessage)

print("5 x 5 is \(5 * 5)")

let temperatureInCelsius = 28
let temperatureInFahrenheit = (Float(temperatureInCelsius) * 9.0 / 5.0) + 32.0
print("\(temperatureInCelsius) degrees Celsius is equal to \(temperatureInFahrenheit) degrees Fahrenheit.")
