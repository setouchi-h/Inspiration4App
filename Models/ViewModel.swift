//
//  ViewModel.swift
//  Inspiration4App
//
//  Created by 橋本一輝 on 2024/09/23.
//

import Foundation

@Observable
class ViewModel {
    var navigationPath: [Area] = []
    var isShowingRocketCapsule: Bool = false
    var isShowingFullRocket: Bool = false
}
