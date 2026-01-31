//
//  Models.swift
//  RestaurantApp
//
//  Created by GEU on 28/01/26.
//
import Foundation

struct Restaurant{
    var id:UUID
    var name:String
    var location:String
    var image:[String]
    var cuisine:[Cuisine]
    var dishes:[Dish]
}

enum Cuisine: String, CaseIterable {
    case american = "American", chinese = "Chinese", french = "French", italian = "Italian", japanese = "Japanese", korean = "Korean", mexican = "Mexican", mughlai = "Mughlai", north_Indian = "North_Indian", south_Indian = "South_Indian", thai = "Thai", vietnamese = "Vietnamese"
        
        var imageName: String {
            switch self {
            case .american: return "american"
            case .chinese: return "chinese"
            case .french: return "french"
            case .italian: return "italian"
            case .japanese: return "japanese"
            case .korean: return "korean"
            case .mexican: return "mexican"
            case .mughlai: return "mughlai"
            case .north_Indian: return "north_indian"
            case .south_Indian: return "south_indian"
            case .thai: return "thai"
            case .vietnamese: return "vietnamese"
            }
        }
}

struct Dish {
    var id:UUID
    var name:String
    var image:[String]
    var description:String
    var price:Double
    var cuisine:[Cuisine]
}
