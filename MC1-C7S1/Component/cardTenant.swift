//
//  cardTenant.swift
//  MC1-C7S1
//
//  Created by Reynard Octavius Tan on 02/04/24.
//

import SwiftUI

struct cardTenant: View {
    var body: some View {
        ZStack{
            Rectangle().frame(width: 170, height: 200)
                .foregroundColor(.white).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading){
                Image("Kasturi")
                HStack{
                    Text("Kasturi")
                        .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                        .padding([.trailing], 35)
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                        .font(.footnote)
                    Text("4.2 / 5")
                        .font(/*@START_MENU_TOKEN@*/.footnote/*@END_MENU_TOKEN@*/)
                        .padding([.leading], -5)
                }
                Text("7 - 12 min")
                    .font(/*@START_MENU_TOKEN@*/.caption2/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(Color(red: 0.570, green: 0.570, blue: 0.570))
            }
        }
    }
    
}

#Preview {
    cardTenant()
}
