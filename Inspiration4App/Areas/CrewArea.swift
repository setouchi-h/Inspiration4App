//
//  CrewArea.swift
//  Inspiration4App
//
//  Created by 橋本一輝 on 2024/09/23.
//

import SwiftUI

struct CrewArea: View {
    var body: some View {
        ScrollView {
            HStack(spacing: 20) {
                ForEach(Crew.allCases) { crew in
                    VStack(alignment: .leading) {
                        Image("crew-\(crew.name)")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 220)
                        Text(crew.fullName)
                            .font(.system(size: 22, weight: .bold))
                        Text(crew.about)
                            .font(.system(size: 20))
                        Spacer(minLength: 0)
                    }
                    .frame(width: 200)
                    .frame(maxHeight: .infinity)
                    .padding(20)
                    .glassBackgroundEffect()
                }
            }
            .padding(20)
        }
    }
}

#Preview {
    CrewArea()
}
