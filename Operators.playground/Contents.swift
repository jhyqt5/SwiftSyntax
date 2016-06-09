//: Playground - noun: a place where people can play

import UIKit

let ticketPrice = 7.5
let allowance = 10.0
var iceCreamPrice = 3.0


if allowance >=  ticketPrice + iceCreamPrice {
    print("lets go to the movies")
} else {
    print("lets watch the movie and not get ice cream")
}

//logical operators

var hungry = true
var vegetarian = false

if hungry {
    print("lets eat")
} else {
    print("lets wait")
}

if !hungry {
    print("lets eat")
} else {
    print("lets wait")
}

if hungry && !vegetarian{
    print("lets eat meat")
} else {
    print("lets wait")
}

if hungry && vegetarian{
    print("lets eat carrots")
} else {
    print("lets wait")
}

//ternary

hungry ? print("lets eat") : print("lets wait")

hungry && !vegetarian ? print("lets eat meat") : print("lets wait")
