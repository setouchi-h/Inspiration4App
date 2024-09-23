//
//  ViewModel.swift
//  Inspiration4App
//
//  Created by 橋本一輝 on 2024/09/23.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var navigationPath: [Area] = []
    @Published var isShowingRocketCapsule: Bool = false
    @Published var isShowingFullRocket: Bool = false
}
