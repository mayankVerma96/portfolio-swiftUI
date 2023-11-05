//
//  ExperiencesView.swift
//  portfolio
//
//  Created by Mayank Verma on 05/11/23.
//

import SwiftUI

struct ExperiencesView: View {
    var experiences: [Experience]
    
    @State var showExperiences = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            HStack(spacing: 16) {
                Text("Experiences")
                    .font(.system(size: 21, weight: .bold))
                    .opacity(0.9)
                
                Button {
                    withAnimation(.easeOut(duration: 0.35)) {
                        showExperiences.toggle()
                    }
                    
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showExperiences ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }.padding(.bottom, 14)
            
            if(showExperiences) {
                ForEach(experiences) { experience in
                    ExperienceView(experience: experience)
                }
            }
        }
    }
}

struct ExperiencesView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            ExperiencesView(experiences: AppModel().portfolio.experiences)
                .padding(24)
        }    }
}
