//
//  cardTenant.swift
//  MC1-C7S1
//
//  Created by Reynard Octavius Tan on 02/04/24.
//

import SwiftUI

struct cardTenant: View {
    var imageName: String
    var name: String
    var time: String
    var body: some View {
        ZStack{
            Rectangle().frame(width: 170, height: 210)
                .foregroundColor(Color(hue: 0.0, saturation: 0.0, brightness: 1.0, opacity: 0.694)).shadow(radius: 10)
            VStack(alignment: .leading){
                Image(imageName)
                HStack{
                    Text("\(name)")
                        .font(.custom("SF Pro", size: 18))
                }
                Text("\(time)")
                    .font(.custom("SF Pro", size: 14))
                    .foregroundStyle(Color(red: 0.570, green: 0.570, blue: 0.570))
            }
        }
    }
    
}

#Preview{
    cardTenant(imageName: "Mustafa", name: "Mustafa Minang", time: "3 - 10 min")
}
