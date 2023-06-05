//
//  OrdersModel.swift
//  MrsoolProject
//
//  Created by Noura Alowayid on 13/11/1444 AH.
//

import Foundation
import SwiftUI
struct Order: Identifiable{
    var id = UUID()
    var orderName: String
    var orderImage: String
    var orderDescription: String
    var total: String
    var duration: String
}

//objects:
var order1 = Order(orderName: "Burgerizzr", orderImage: "rizzr", orderDescription: "1- Cheese Burger without Onion.\n 2- French Frice.\n 1-Pepsi", total: "111.25 SAR", duration: "15 days")
var order2 = Order(orderName: "McDonald's", orderImage: "mac", orderDescription: "2-Mac Checken Spicy with cheese. \n 4pieces McNugget\n 1-Big Tasty", total: "92.0 SAR", duration: "19 days")
var order3 = Order(orderName: "Dawar Al Saada", orderImage: "dawar", orderDescription: "2- Egg with Cheese.\n 1- Mozzarella Cheese. \n 1-Orange Juice.", total: "67.59 SAR", duration: "20 days")
var order4 = Order(orderName: "Five Guys", orderImage: "five", orderDescription: "1- Cheese Burger without Onion.\n 2- French Frice.\n 1-Pepsi", total: "155.37 SAR", duration: "15 days")

//array:

let allOrders = [order1, order2, order3, order4]
