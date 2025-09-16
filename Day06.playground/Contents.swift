import Cocoa

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
for os in platforms {
    print("Swift Works well on \(os)")
}

for i in 1...12{
    print("5 * \(i) = \(5 * i)")
}

for i in 1..<5 {
    print("Counting up to 5: \(i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

var countdown = 10
while countdown > 0{
    print("count = \(countdown)")
    countdown -= 1
}

let id = Int.random(in: 1...100)
print(id)

let randomDouble = Double.random(in: 0...1)
print(randomDouble)

var roll = 0
while roll != 20{
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]
for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(filename)")
}

var number1 = 4, number2 = 14
var multiplesOfTwo = [Int]()
for i in 1...1000{
    if i.isMultiple(of: number1) && i.isMultiple(of: number2){
        multiplesOfTwo.append(i)
        if multiplesOfTwo.count == 10{
            break
        }
    }
}
print(multiplesOfTwo)

//breakpoint3
for i in 1...100{
    if i.isMultiple(of: 3) && i.isMultiple(of: 5){
        print("FizzBuzz")
    }else if i.isMultiple(of: 3){
        print("Fizz")
    }else if i.isMultiple(of: 5){
        print("Buzz")
    }else{
        print(i)
    }
}
