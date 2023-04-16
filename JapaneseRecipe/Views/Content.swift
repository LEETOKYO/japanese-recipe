//
//  Content.swift
//  JapaneseRecipe
//
//  Created by 李 on 2023/04/07.
//

import SwiftUI

struct Content: View {
    var recipe: Recipe?
    var body: some View {
        if let recipe = recipe {
            VStack(alignment: .leading){
                Text(recipe.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                ForEach(recipe.procedures,id: \.self){
                    p in Text(p)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                        .padding(.top)
                      
                    
                }
                Spacer()
            }
        }
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        Content(recipe: Recipe.testData())
    }
}
