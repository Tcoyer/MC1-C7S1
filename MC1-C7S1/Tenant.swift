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
        HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            VStack (alignment: .leading) {
                Text("Welcome to")
                    .font(.custom("Poppins", fixedSize: 16))
                    .fontWeight(.bold)
                Text("GOP 9 Green Eatery")
                    .font(.custom("Poppins", fixedSize: 18))
                    .fontWeight(.bold)
            }.padding([.trailing], 90)
            Image("Logo")
                .resizable()
                .clipShape(Circle())
                .frame(width: 80, height: 80)
                .padding([.trailing], 15)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.gray.opacity(0.3)
                .ignoresSafeArea()
        }.padding([.bottom],100)
        
        NavigationStack{}
            .searchable(text: $searchText, prompt: "Find tenant or food")
        
        
        VStack{
            Text("Deals")
            Rectangle()
            
            VStack{
                HStack{
                    Text("Tenant List")
                    Text("Tenant Map")
                }
                HStack{
                    Rectangle()
                    Rectangle()
                }
                HStack{
                    Rectangle()
                    Rectangle()
                }
            }
        }
    }
}
