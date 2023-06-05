//
//  ProfileModel.swift
//  MrsoolProject
//
//  Created by Noura Alowayid on 14/11/1444 AH.
//

import Foundation
struct Profile: Identifiable{
    var id = UUID()
    var profileText: String
    var profileNav: String
}

//objects:
var prof1 = Profile(profileText: "Account Balance", profileNav: "0.0 SAR")
var prof2 = Profile(profileText: "Number Of Orders", profileNav: "93 Orders")
var prof3 = Profile(profileText: "Saved Addresses", profileNav: "3 >")
var prof4 = Profile(profileText: "Service Reviews", profileNav: "26 >")
var prof5 = Profile(profileText: "Users Feedback", profileNav: "98 >")
var prof6 = Profile(profileText: "My cashback cards", profileNav: "0.0 SAR")
var prof7 = Profile(profileText: "Coupons", profileNav: "2 >")
var prof8 = Profile(profileText: "Support For Clients", profileNav: ">")


//array:

let allList = [prof1, prof2, prof3, prof4, prof5, prof6, prof7, prof8]
