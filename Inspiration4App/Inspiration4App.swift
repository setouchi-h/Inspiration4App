//
//  Inspiration4AppApp.swift
//  Inspiration4App
//
//  Created by 橋本一輝 on 2024/09/23.
//

import SwiftUI

@main
struct Inspiration4App: App {
    
    @StateObject private var model = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            Areas()
                .environmentObject(model)
        }
        
        WindowGroup(id: "CapsuleRealityArea") {
             CapsuleRealityArea()
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.6, height: 0.6, depth: 0.6, in: .meters)
        
        ImmersiveSpace(id: "FullRocketRealityArea") {
             FullRocketRealityArea()
        }
        .immersionStyle(selection: .constant(.full), in: .full)
    }
}
