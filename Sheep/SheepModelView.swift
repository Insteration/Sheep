//
//  SheepTableView.swift
//  Sheep
//
//  Created by Artem Karmaz on 06.06.2019.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import SwiftUI

struct SheepModelView : View {
    
    var sheepModel: Sheep
    
    var body: some View {
        HStack() {
            
            Image(sheepModel.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 5)
            
            VStack(alignment: .leading) {
                Text(sheepModel.name)
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Text(sheepModel.description)
                    .font(.subheadline)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

#if DEBUG
struct SheepTableView_Previews : PreviewProvider {
    static var previews: some View {
        
        SheepModelView(sheepModel: dataSheep[0])
    }
}
#endif
