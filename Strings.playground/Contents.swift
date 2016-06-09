//: Playground - noun: a place where people can play

import UIKit

//: # Strings

import UIKit
import Foundation

//: ## Defining Strings using string literals
let myFirstString = "mo 💰"
let mySecondString = "mo problems"

//: ## String concatenation
let theTruth = myFirstString + ", " + mySecondString

//: ## Emoji characters
let similarTruth = "💰can't buy me 💖"

//: ## String interpolation

//: ### Plain string
var doggyDiet = "Lulu eats 25lbs of dog food per month"
//: ### String with variables
var dogName = "Ferris 🐶"

doggyDiet = "\(dogName) eats 25lbs of dog food per month"

//: ### String with variables and expression
var lbsPerDay = 0.75
var daysPerMonth:Double = 30.0
doggyDiet = "\(dogName) eats ?lbs of dog food per month"



lbsPerDay = 0.25
dogName = "Lil Frankie"
doggyDiet = "\(dogName) eats ?lbs of dog food per month"
//: ## A String isn't just a String

//: ### A String is an Array of Characters
var password = "Meet me in St. Louis"
for character in password.characters {
    if character == "e" {
        print("found an e!")
    } else {
    }
}

//: ### A String can be treated as an NSString
let newPassword = password.stringByReplacingOccurrencesOfString("e", withString: "3")





