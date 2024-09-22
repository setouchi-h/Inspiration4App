//
//  Area.swift
//  Inspiration4App
//
//  Created by 橋本一輝 on 2024/09/23.
//

import Foundation

enum Area: String, Identifiable, CaseIterable, Equatable {
    case astronauts, equipment, mission
    var id: Self {self}
    var name: String {rawValue.lowercased()}
    var title:String {
        switch self {
        case .astronauts:
            return "Inspiration 4 mission crew members..."
        case .equipment:
            return "Inspiration 4 mission equipments..."
        case .mission:
            return "Inspiration 4 mission trailers..."
        }
    }
}
