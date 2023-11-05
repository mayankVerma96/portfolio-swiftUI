//
//  ContentView.swift
//  portfolio
//
//  Created by Mayank Verma on 05/11/23.
//

import SwiftUI

struct PortfolioView: View {
    var appModel: AppModel = AppModel()
    
    var body: some View {
        ZStack {
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    HeaderView(appModel: appModel)
                    
                    SkillsView(skill: appModel.portfolio.skills, width: UIScreen.main.bounds.width - 40)
                        .padding(.top, 28)
                    ExperiencesView(experiences: appModel.portfolio.experiences)
                        .padding(.top, 42)
                }.padding(24)
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .colorScheme(.dark)
    }
}
