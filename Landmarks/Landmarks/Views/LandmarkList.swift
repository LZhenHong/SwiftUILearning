//
//  LandmarkList.swift
//  Landmarks
//
//  Created by LZhenHong on 2022/11/9.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            !showFavoriteOnly || landmark.isFavorite
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorite only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
