//
//  Phone.swift
//  Case Check
//
//  Created by Tadreik Campbell on 9/17/22.
//

import Foundation

enum CaseType: String, CaseIterable {
    case leather, silicone, battery
    case folio, sleeve, clear
}

struct Case: Hashable {
    let name: String
    let type: CaseType
    let image: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(image)
    }
    
    static func ==(lhs: Case, rhs: Case) -> Bool {
        return lhs.image == rhs.image
    }
}

struct Phone: Hashable {
    let name: String
    let image: String
    let caseTypes: [CaseType]
    let caseList: [Case]
    let id = UUID()
}
