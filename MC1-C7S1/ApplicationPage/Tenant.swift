//
//  Tenant.swift
//  MC1-C7S1
//
//  Created by Ferdinand Jacques on 28/03/24.
//

import SwiftUI

struct Tenant: View{
    var body: some View {
        @State var searchText = ""
        
        HStack (alignment: .center) {
            VStack (alignment: .leading) {
                Text("Welcome to")
                    .font(.system(size: 20))
                    .foregroundStyle(Color.white)
                    .bold()
                Text("GOP 9 Green Eatery")
                    .font(.system(size: 27))
                    .foregroundStyle(Color.white)
                    .bold()
            }.padding([.trailing], 90)
                .padding([.top], 20)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Image("background")
                    .scaledToFit()
            }.padding([.top], 80)
        
        ZStack{
            SearchBar()
                .padding([.bottom], 625)
                .frame(width: 380)
            VStack {
                VStack(alignment: .leading){
                    Text("Select the tenant")
                        .font(.custom("SF Pro", size: 20))
                        .bold()
                    ScrollView{
                        HStack{
                            cardTenant(imageName: "Kasturi", name: "Kasturi", time: "7 - 12 min")
                                .onTapGesture {
                                    goTenant()
                                }
                            cardTenant(imageName: "Dapoer", name: "Dapoer Cowek", time: "5 - 10 min")
                        }
                        HStack{
                            cardTenant(imageName: "Ahza", name: "Ahza Food", time: "7 - 12 min")
                            cardTenant(imageName: "Mustafa", name: "Mustafa Minang", time: "7 - 12 min")
                        }
                    }
                }.padding([.top], 20)
            }.padding([.top], 50)
        }.padding([.top], 50)
    }
}

func goTenant(){
    Menu()
}

#Preview {
    Tenant()
}

