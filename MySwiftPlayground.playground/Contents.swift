//: Playground - noun: a place where people can play

struct SomeStructure {
    //structure definition goes here
}
class SomeClass {
    // class definition here
}

struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}
let someResolution = Resolution()
let someVideoMode = VideoMode()
print("The width of someResolution is \(someResolution.width)")
// Prints "The width of someResolution is 0"
print("The width of someVideoMode is \(someVideoMode.resolution.width)")
// Prints the width of someVideoMode is 0"
someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")
// Prints  "The width of someVideoMode is now 1280"

let hd =  Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048

print("cinema is now \(cinema.width) pixels wide")
// Prints cinema is now 2048 pixels wide:

print ("hd is still \(hd.width) pixels wide")
// Prints "hd is still 1920 pixels wide"

enum CompassPoint {
    case north, south, east, west
    mutating func turnNorth() {
    self = .north
    }
}
var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection.turnNorth()

print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")
// Prints "The current direction is north"
// Prints "The remembered direcion is west"


