//
//  ContentView.swift
//  Landmarks
//
//  Created by Đinh Trần Việt Anh on 31/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            VStack {
                VStack {
                    VStack {
                       
                        VStack(alignment: .leading) {
                            Text("Turtle Rock")
                                .font(.title)
                            HStack {
                                Text("Joshua Tree National Park")
                                    .font(.subheadline)
                                Spacer()
                                Text("California")
                                    .font(.subheadline)
                                
                            }
                                
                        }
                        .padding()
                            
                    }
                
                }
               
            }
          
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
