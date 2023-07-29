//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Мустафа Натур on 29.07.2023.
//

import SwiftUI

struct LandmarkRow: View {
    
    let landmarkModel: Landmark
    
    var body: some View {
        HStack {
            landmarkModel.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Text(landmarkModel.name)
            
            Spacer()
        }
        
        
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmarkModel: landmarks[1])
            LandmarkRow(landmarkModel: landmarks[2])
            LandmarkRow(landmarkModel: landmarks[3])
            LandmarkRow(landmarkModel: landmarks[4])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
