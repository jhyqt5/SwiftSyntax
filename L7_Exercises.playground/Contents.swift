//: ## Lesson 7 Exercises - Enums & Structs

//: __Problem 1__
//:
//: At the end of the code snippet below, what is the value of macchiato.steamedMilk when EspressoDrink is implemented as a struct? What about when EspressoDrink is implemented as a class?
enum Amount {
    case None
    case Splash
    case Some
    case Alot
}

struct EspressoDrink {
    let numberOfShots: Int
    var steamedMilk: Amount
    let foam: Bool
    
    init(numberOfShots: Int, steamedMilk: Amount, foam: Bool) {
        self.numberOfShots = numberOfShots
        self.steamedMilk = steamedMilk
        self.foam = foam
    }
}

var macchiato = EspressoDrink(numberOfShots: 2, steamedMilk: .None, foam: true)
var espressoForGabrielle = macchiato
espressoForGabrielle.steamedMilk = .Splash
macchiato.steamedMilk

//Struct is .None
//Class is .Spash
//: __Problem 2__
//:
//: __2a.__
//: Write an enum to represent the five fingers on a human hand.
//:
//: __2b.__
//: Associate an Int value with each finger.
enum Fingers: Int {
    case Pinky, Ring, Middle, Pointer, Thumb
}
//: __Problem 3__
//:
//: Enum, class, or struct?
//:
//: Uncomment the code below and choose whether each type should be an enum, class, or struct.
//Struct Window {
//    let height: Double
//    let width: Double
//    var open: Bool
//}

//Enum WritingImplement {
//    case Pen
//    case Pencil
//    case Marker
//    case Crayon
//    case Chalk
//}

//Struct Material {
//    let name: String
//    let density: Double
//    let stiffness: Double
//}


//Class Bicycle {
//    let frame: Material
//    let weight: Double
//    let category: String
//
//    static var bikeCategories: [String] = ["Road", "Touring", "Mountain", "Commuter", "BMX"]
//
//    func lookCool() {
//        print("Check out my gear-shifters!")
//    }
//}

//Class Cyclist {
//    var speed: Double
//    let agility: Double
//    let bike: Bicycle
//
//    var maneuverability: Double {
//        get {
//            return agility - speed/5)
//        }
//    }
//
//    init(speed: Double, agility: Double, bike: Bicycle) {
//        self.speed = speed
//        self.agility = agility
//        self.bike = bike
//    }
//
//    func brake() {
//        speed--
//    }
//
//    func pedalFaster(factor: Double) {
//        speed * factor
//    }
//}

//enum Size: String {
//    case Small = "8 ounces"
//    case Medium = "12 ounces"
//    case Large = "16 ounces"
//}

//: __Problem 4__
//:
//: Write a cookie struct.
//:
//: __4a.__
//: Include 2 stored properties. Examples might include a string representing flavor, or an int representing minutesSinceRemovalFromOven.
struct Cookie {
    var flavor: Int
    var doughiness: Int
    
    var delicious: Bool {
        get {
            let delFactor = self.flavor + self.doughiness
            
            if delFactor >= 5 {
                return true
            } else {
                return false
            }
        }
    }
    
    func tempt() {
        if delicious {
            print("tempted")
        } else {
            print("not tempted")
        }
    }
}
//:__4b.__
//: Add a computed property, "delicious", a bool whose value depends upon the values of the stored properties.

//:__4c.__
//:Include a method. For example, the method tempt() might return or print out an indication of a person being tempted to eat the cookie.

//: __4d.__
//: Create an instance of your Cookie struct and call its method.
let cookie = Cookie(flavor: 2, doughiness: 3)
cookie.delicious
cookie.tempt()

//: __Problem 5__
//:
//: Write a class to represent a listing for a Bed and Breakfast.
//:
//: __5a.__
//: Include 3 stored properties. Examples might include a category representing the type of housing i.e. apartment or house, or a bool representing availability.

//: __5b.__
//: Consider writing a helper enum and incorporating it as one of your properties.

//: __5c.__
//: Include at least one method. For example, the method book() might toggle the availability bool or return a reservation confirmation.

//: __5d.__
//: Create an instance of your BnBListing class and call one of its methods.

enum Housing {
    case House, Apartment, BnB, Hotel, Couch
}

class Airbnb {
    var capacity: Int
    var avail: Bool
    var category: Housing
    
    
    init (capacity: Int, avail: Bool, category: Housing) {
        self.capacity = capacity
        self.avail = avail
        self.category = category
    }
    
    func book() {
        self.avail = false
        print("booked")
    }
}


var todHouse = Airbnb(capacity: 5, avail: true, category: .Couch)
todHouse.book()
todHouse.avail




