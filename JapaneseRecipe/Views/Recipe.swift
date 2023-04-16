//
//  Recipe.swift
//  JapaneseRecipe
//
//  Created by 李 on 2023/04/07.
//

import Foundation
class Recipe:Identifiable,Decodable{
    var id: UUID?
    var name:String
    var procedures:[String]
    var image:String
    var introduce:String
    init(id: UUID? = nil, name: String, procedures: [String], image: String, introduce: String) {
        self.id = id
        self.name = name
        self.procedures = procedures
        self.image = image
        self.introduce = introduce
    }
 static func testData() ->Recipe {
     let testData = Recipe(id:UUID(),name:"test name",procedures: ["test1","test2","test3","test2","test3"] ,image:"curryudon",introduce:"test int")
        return  testData
    }
}
