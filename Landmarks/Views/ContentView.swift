//
//  ContentView.swift
//  Landmarks
//
//  Created by Đinh Trần Việt Anh on 31/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .feattured
    enum Tab {
        case feattured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label ("Featured", systemImage: "star")
                }
                .tag(Tab.feattured)
            
            LandmarkList()
                .tabItem {
                    Label ("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
