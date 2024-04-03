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
                    
                    //                        //
                    //                        HStack{
                    //                            VStack(alignment: .leading){
                    //                                Image("Kasturi")
                    //                                HStack{
                    //                                    Text("Kasturi")
                    //                                        .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                    //                                        .padding([.trailing], 35)
                    //                                    Image(systemName: "star.fill")
                    //                                        .foregroundColor(Color.yellow)
                    //                                        .font(.footnote)
                    //                                    Text("4.2 / 5")
                    //                                        .font(/*@START_MENU_TOKEN@*/.footnote/*@END_MENU_TOKEN@*/)
                    //                                        .padding([.leading], -5)
                    //                                }
                    //                                Text("7 - 12 min")
                    //                                    .font(/*@START_MENU_TOKEN@*/.caption2/*@END_MENU_TOKEN@*/)
                    //                                    .foregroundStyle(Color(red: 0.570, green: 0.570, blue: 0.570))
                    //                            }.padding([.trailing], 10)
                    //                            VStack(alignment: .leading){
                    //                                Image("Dapoer")
                    //                                HStack{
                    //                                    Text("Ahza Snack")
                    //                                        .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                    //
                    //                                    Image(systemName: "star.fill")
                    //                                        .foregroundColor(Color.yellow)
                    //                                        .font(.footnote)
                    //                                    Text("4.2 / 5")
                    //                                        .font(/*@START_MENU_TOKEN@*/.footnote/*@END_MENU_TOKEN@*/)
                    //                                        .padding([.leading], -5)
                    //                                }
                    //                                Text("5 - 10 min")
                    //                                    .font(/*@START_MENU_TOKEN@*/.caption2/*@END_MENU_TOKEN@*/)
                    //                                    .foregroundStyle(Color(red: 0.570, green: 0.570, blue: 0.570))
                    //                            }
                    //                        }
                    //                        HStack{
                    //                            VStack(alignment: .leading){
                    //                                Image("Wong")
                    //                                HStack{
                    //                                    Text("Wong Jowo")
                    //                                    Image(systemName: "star.fill")
                    //                                        .foregroundColor(Color.yellow)
                    //                                        .font(.footnote)
                    //                                    Text("4.2 / 5")
                    //                                        .font(/*@START_MENU_TOKEN@*/.footnote/*@END_MENU_TOKEN@*/)
                    //                                        .padding([.leading], -5)
                    //                                }
                    //                                Text("7 - 12 min")
                    //                                    .font(/*@START_MENU_TOKEN@*/.caption2/*@END_MENU_TOKEN@*/)
                    //                                    .foregroundStyle(Color(red: 0.570, green: 0.570, blue: 0.570))
                    //                            }.padding([.trailing], 10)
                    //                            VStack(alignment: .leading){
                    //                                Image("Lading")
                    //                                HStack{
                    //                                    Text("La Ding")
                    //                                    Image(systemName: "star.fill")
                    //                                        .foregroundColor(Color.yellow)
                    //                                        .font(.footnote)
                    //                                    Text("4.2 / 5")
                    //                                        .font(/*@START_MENU_TOKEN@*/.footnote/*@END_MENU_TOKEN@*/)
                    //                                        .padding([.leading], -5)
                    //                                }
                    //                                Text("5 - 10 min")
                    //                                    .font(/*@START_MENU_TOKEN@*/.caption2/*@END_MENU_TOKEN@*/)
                    //                                    .foregroundStyle(Color(red: 0.570, green: 0.570, blue: 0.570))
                    //                            }
                    //                        }
                    //
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

