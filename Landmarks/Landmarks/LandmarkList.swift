//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Đinh Trần Việt Anh on 05/09/2023.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = false
    var  filteredLandmarks :[Landmark ]  {
        modelData.landmarks.filter{
            landmark in (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    
    
    var body: some View {
        
        
        NavigationView {
            List {
                Toggle(isOn: $showFavoriteOnly){
                    Text("Favorite only")
                }
                
                ForEach(filteredLandmarks){landmark in
                    NavigationLink
                    {
                        LandmarkDetail(landmark: landmark)
                        
                    } label:{
                        LandmarkRow(landmark: landmark)
                    }}
                }
            
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }}
