//
//  AppModel.swift
//  portfolio
//
//  Created by Mayank Verma on 05/11/23.
//

import Foundation

class AppModel: ObservableObject { // observableObject -> view model can be passed and modified by other views
    var portfolio: Portfolio = Portfolio(name: "Mayank Verma", role: "Frontend/iOS Developer", description: "Experienced Frontend Developer in both web/mobile app, currently learning about iOS Development", location: "Gurgaon", skills: [
        Skill(id: UUID().uuidString, skillName: "iOS", image: "mobile"),
        Skill(id: UUID().uuidString, skillName: "React", image: "react"),
        Skill(id: UUID().uuidString, skillName: "Redux", image: "redux"),
        Skill(id: UUID().uuidString, skillName: "UI/UX", image: "fingerprint"),
        Skill(id: UUID().uuidString, skillName: "Swift 5", image: "swift"),
    ], experiences: [
        Experience(id: UUID().uuidString, companyName: "Apple", role: "Senior Frontend Developer", duration: "April 2022 - Present"),
        Experience(id: UUID().uuidString, companyName: "Microsoft", role: "Frontend Developer", duration: "February 2020 - March 2022"),
        Experience(id: UUID().uuidString, companyName: "Google", role: "Software Engineer", duration: "February 2018 - February 2020"),
    ])
    
}
