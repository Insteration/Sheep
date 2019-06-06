//
//  ContentView.swift
//  Sheep
//
//  Created by Artem Karmaz on 06.06.2019.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import SwiftUI

struct MainView : View {
    var body: some View {
        
        NavigationView {
            
            List(dataSheep) { sheep in
                NavigationButton(destination: SheepModelView(sheepModel: sheep)) {
                    SheepModelView(sheepModel: sheep)
                }
            }
                .navigationBarTitle(Text("Sheepgram"))
        }
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE"].identified(by: \.self)) { device in
            MainView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
#endif
