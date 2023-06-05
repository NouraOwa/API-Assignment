//
//  MrsoolModel.swift
//  MrsoolProject
//
//  Created by Noura Alowayid on 13/11/1444 AH.
//

import Foundation
import SwiftUI

class RestaurantViewModel: ObservableObject {
    @Published var restaurant: [Restaurant] = []
    
    init() {
        addRestaurant()
    }
    
    func addRestaurant() {
        restaurant = allRestaurant
    }
    
    func shuffleOrder() {
        restaurant.shuffle()
    }
    
    func reverseOrder() {
        restaurant.reverse()
    }
    
    func removeLastRestaurant() {
        restaurant.removeLast()
    }
    
    func removeFirstRestaurant() {
        restaurant.removeFirst()
    }
    
    //RESTAURANTS:
    struct Restaurant: Identifiable{
        
        var id = UUID()
        var itemImage : String
        var itemName: String
        var itemRate: String
        var itemPrice: String
        var itemLocation: String
    }
    let allRestaurant = [
    //objects:
     Restaurant.init(itemImage: "mac", itemName: "McDonald's", itemRate: "4.1", itemPrice: "Delivery 9 SAR", itemLocation: "3.2 km"),
     Restaurant.init(itemImage: "shawa", itemName: "Shawarmer", itemRate: "4.4", itemPrice: "Delivery 9 SAR", itemLocation: "6.8 km"),
     Restaurant.init(itemImage: "pizza", itemName: "Pizza Hut", itemRate: "4.2", itemPrice: "Delivery 9 SAR", itemLocation: "8.7 km"),
     Restaurant.init(itemImage: "burger", itemName: "Burger King", itemRate: "4.4", itemPrice: "Delivery 9 SAR", itemLocation: "11.6 km"),
     Restaurant.init(itemImage: "kudo", itemName: "Kudo", itemRate: "4.4", itemPrice: "Delivery 9 SAR", itemLocation: "3.6 km")
    ]
    //array:
    //let allRestaurant = [rest1, rest2, rest3, rest4, rest5]
}

//CATEGORISE:
struct Categorise: Identifiable{
    var id = UUID()
    var cateIcon: String
    var cateName: String
}

//objects:
var cat1 = Categorise.init(cateIcon: "burg", cateName: "Burger")
var cat2 = Categorise.init(cateIcon: "fried", cateName: "Chicken")
var cat3 = Categorise.init(cateIcon: "fast", cateName: "Fast Food")
var cat4 = Categorise.init(cateIcon: "coffee", cateName: "Coffee")

//array:

let allCategorise = [cat1, cat2, cat3, cat4]

//PRICES:
struct Prices:Identifiable{
    var id = UUID()
    var price: String
    var priceIcon: String
}

//objects:
var price1 = Prices.init(price: "5 Riyal", priceIcon: "5")
var price2 = Prices.init(price: "9 Riyal", priceIcon: "9")
var price3 = Prices.init(price: "13 Riyal", priceIcon: "13")

//array
let allPrices = [price1, price2, price3]
