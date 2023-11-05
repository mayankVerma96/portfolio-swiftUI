//
//  HeaderView.swift
//  portfolio
//
//  Created by Mayank Verma on 05/11/23.
//

import SwiftUI

struct HeaderView: View {
    var appModel: AppModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("filterImage")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(5)
                    .background(
                        Circle()
                            .opacity(0.7)
                            .shadow(radius: 5)
                )
                Spacer()
            }
            Text(appModel.portfolio.name)
                .font(.system(size: 17))
                .padding(.top, 8)
            
            Text(appModel.portfolio.role)
                .font(.system(size: 18))
                .opacity(0.85)
                .padding(.top, -2)
            
            HStack {
                Image(systemName: "location.fill")
                    .font(.system(size: 18, weight: .semibold))
                Text(appModel.portfolio.location)
                    .font(.system(size: 18))
            }
            .padding(.top, 10)
            .opacity(0.54)
            
            Text(appModel.portfolio.description)
                .font(.system(size: 17))
                .opacity(0.5)
                .padding(.top, 24)
                .lineSpacing(12)
        }
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
            .padding(24)
    }
}
