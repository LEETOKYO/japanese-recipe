//
//  Pictures.swift
//  JapaneseRecipe
//
//  Created by 李 on 2023/04/07.
//

import SwiftUI

struct Pictures: View {
    var recipe:Recipe
    var body: some View {
        ZStack{
            Image(recipe.image)
                .resizable()
            VStack{
               
                Text(recipe.introduce)
                    .font(.subheadline)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
            }
                
        }
        .cornerRadius(15)
        .padding(.horizontal)
        .frame(height: 403.0)
        .clipped()
       
        
        
    }
}

struct Pictures_Previews: PreviewProvider {
    static var previews: some View {
        Pictures(recipe: Recipe.testData())
    }
}
