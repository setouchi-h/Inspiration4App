//
//  NavigationToAreas.swift
//  Inspiration4App
//
//  Created by 橋本一輝 on 2024/09/23.
//

import SwiftUI

struct NavigationToAreas: View {
    var body: some View {
        ZStack {
            Image("Inspiration4")
                    .resizable()
                    .scaledToFill()
            
            VStack {
                Text("Welcome To The Inspiration 4 Mission By SpaceX")
                    .monospaced()
                    .font(.system(size: 40, weight: .bold))
                    .padding(.top, 280.0)
                    .padding(.horizontal, 100.0)
                    .lineLimit(2)
                
                HStack(spacing: 25) {
                    ForEach(Area.allCases) { area in
                        NavigationLink {
                            Text(area.title)
                                .monospaced()
                                .font(.system(size: 40, weight: .bold))
                            
                            switch area {
                            case .astronauts:
                                CrewArea()
                            case .equipment:
                                EquipmentArea()
                            case .mission:
                                EquipmentArea()
                            }
                            
                            Spacer()
                        } label: {
                            Label(area.name, systemImage: "chevron.right")
                                .monospaced()
                                .font(.title)
                        }
                        .controlSize(.extraLarge)
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationToAreas()
        .environmentObject(ViewModel())
}
