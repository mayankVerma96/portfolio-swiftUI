//
//  Portfolio.swift
//  portfolio
//
//  Created by Mayank Verma on 05/11/23.
//

import Foundation

struct Skill: Identifiable {
    var id: String
    var skillName: String
    let image: String
}

struct Experience: Identifiable {
    var id: String
    var companyName: String
    var role: String
    var duration: String
}

struct Portfolio {
    let name: String
    let role: String
    let description: String
    let location: String
    
    let skills: [Skill]
    let experiences: [Experience]
}
