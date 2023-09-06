//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Đinh Trần Việt Anh on 06/09/2023.
//

import SwiftUI

struct FavoriteButton: View {
    
    @Binding var isSet:Bool
    
    var body: some View {
       
        Button{
            
            isSet.toggle()
        } label: {
            Label("Toogle Favorite", systemImage: isSet ? "star.fill":"star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
