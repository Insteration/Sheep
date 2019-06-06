//
//  SheepImage.swift
//  Sheep
//
//  Created by Artem Karmaz on 06.06.2019.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import SwiftUI


struct SheepDolly : View {
    
    var body: some View {
        
        VStack {
            
            ForEach(dataSheep.identified(by: \.self)) { (value: Sheep) in
                
                Image(value.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 10))
                    .shadow(radius: 15)
                
                Text(value.name)
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .offset(y: -10)
                
                Text(value.description)
                    .font(.subheadline)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .offset(y: -50)
                
                }
                
                .padding()

        }
        
    }
}

#if DEBUG
struct SheepImage_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE"].identified(by: \.self)) { device in
            SheepDolly()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
#endif
