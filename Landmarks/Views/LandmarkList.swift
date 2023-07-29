//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Мустафа Натур on 29.07.2023.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmarkModel: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

#Preview {
    LandmarkList()
}
