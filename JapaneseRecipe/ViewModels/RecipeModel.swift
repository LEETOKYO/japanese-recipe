//
//  RecipeModel.swift
//  JapaneseRecipe
//
//  Created by 李 on 2023/04/07.
//

import Foundation
// create a class
class RecipeModel:ObservableObject{
    // array type of instance
    @Published var recipe = [Recipe]()
    init() {
        //get the recipe from local Json
        self.recipe = getLocalJson()
    }
    //This is a Swift function called " getLocalsonO' that reads a local JSON file named
    //"data.json" and parses it into an array of Recipe objects.
    func getLocalJson()->[Recipe]{
        //getting the file path of data json store it in pathstring constant
        let pathString = Bundle.main.path(forResource: "data", ofType:"json" )
        //check if pathstring is not nil
        guard pathString != nil else{
            return [Recipe]()
        }
        let url = URL(fileURLWithPath: pathString!)
        do{
            let data = try Data(contentsOf:url)
            let decoder = JSONDecoder()
            do{
                let recipeData = try decoder.decode([Recipe].self, from:data)
                for r in recipeData{
                    r.id = UUID()
                }
                return recipeData
            }
            catch{
                print(error)
            }
        }
        catch{
            print(error)
        }
        return [Recipe]()
    }
}
