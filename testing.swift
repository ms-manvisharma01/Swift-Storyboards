//
//  testing.swift
//  RestaurantApp
//
//  Created by GEU on 28/01/26.
//

import Playgrounds

#Playground{
    var dataModel = DataModel()
    let filtered = dataModel.getRestaurantforCuisine(cuisine:.chinese)
    print(filtered)
}
