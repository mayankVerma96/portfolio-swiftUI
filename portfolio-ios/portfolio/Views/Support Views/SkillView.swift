//
//  SkillView.swift
//  portfolio
//
//  Created by Mayank Verma on 05/11/23.
//

import SwiftUI

struct SkillView: View {
    var skill: Skill
    var width: CGFloat = 120
    var body: some View {
        VStack {
            Image(skill.image)
                .font(.system(size: 35, weight: .medium))
                .opacity(0.7)
            
            Text(skill.skillName)
                .font(.system(size: 14))
                .padding(.top, 10)
        }.padding()
            .frame(width: width)
            .background(RoundedRectangle(cornerRadius: 12)
                .opacity(0.075)
            )
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: AppModel().portfolio.skills[0])
    }
}
