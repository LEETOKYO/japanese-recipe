//
//  ContentView.swift
//  JapaneseRecipe
//
//  Created by 李 on 2023/04/07.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = RecipeModel()
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    ForEach(model.recipe){
                        a in
                        NavigationLink(destination: Content(recipe: a), label: {
                            Pictures(recipe: a)
                        })
                    }
                }
            }
            .navigationTitle("Recipe")
        }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
