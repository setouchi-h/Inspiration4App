//
//  CapsuleRealityArea.swift
//  Inspiration4App
//
//  Created by 橋本一輝 on 2024/09/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct CapsuleRealityArea: View {
    var body: some View {
        RealityView { content in
            guard let entity = try? await Entity(named: "Scene", in: realityKitContentBundle) else {
                fatalError("Unable to load scene model")
            }
            content.add(entity)
        }
    }
}

#Preview {
    CapsuleRealityArea()
}
