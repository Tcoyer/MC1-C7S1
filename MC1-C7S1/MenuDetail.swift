//
//  MenuDetail.swift
//  MC1-C7S1
//
//  Created by Alifiyah Ariandri on 02/04/24.
//

import Foundation

import SwiftUI

struct MenuDetail: View {
    
    var primaryGreen = Color(red: 0.0, green: 0.5725490196078431, blue: 0.4235294117647059)
            
    var body: some View {
        VStack() {
            Image("Mie Goreng Assets")
            
            Spacer().frame(height: 22)

            HStack {
                VStack (alignment: .leading) {
                    Text("Mie goreng ayam")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                    Spacer().frame(height: 5)
                    Text("Mie goreng dengan ayam pedas.")
                        .foregroundColor(Color.gray)
                        .font(.system(size: 14))
                }
                Spacer().frame(width: 55)
                Text("Rp14.000").font(.system(size: 16))
            }
            Spacer().frame(height: 40)
            
            HStack {
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "list.clipboard")
                            .foregroundColor(primaryGreen)
                        Text("Add Notes")
                            .foregroundColor(primaryGreen) // Menyesuaikan warna teks dengan warna ikon
                            .font(.system(size: 14))
                    }
                    .padding(.horizontal, 50)
                    .padding(.vertical, 10)// Menambahkan padding
                    .background(Color.white) // Menambahkan latar belakang putih
                    .cornerRadius(5) // Memberikan radius sudut
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(primaryGreen, lineWidth: 1)
                    )
                }
                
                Spacer().frame(width: 16)
                
                Button(action: {
                    
                }) {
                    Text("-")
                        .foregroundColor(Color.green) // Warna teks hijau tua
                        .padding() // Menambahkan padding untuk memperluas area sentuhan
                        .font(.system(size: 12))

                    
                }
                .background(Color.green.opacity(0.3)) // Warna latar belakang hijau muda dengan opasitas 0.3
                .clipShape(Circle())
                
                
                HStack {
                    Text("1")
                        .foregroundColor(.green) // Menyesuaikan warna teks dengan warna ikon
                        .font(.system(size: 12))

                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10)// Menambahkan padding
                .background(Color.green.opacity(0.3)) // Menambahkan latar belakang putih
                .cornerRadius(10)
                

                
                Button(action: {
                    
                }) {
                    Text("+")
                        .foregroundColor(Color.green) // Warna teks hijau tua
                        .padding() // Menambahkan padding untuk memperluas area sentuhan
                        .font(.system(size: 12))

                    
                }
                .background(Color.green.opacity(0.3)) // Warna latar belakang hijau muda dengan opasitas 0.3
                .clipShape(Circle())
            }
            
            Spacer().frame(height: 14)
            
            Button(action: {
                
            }) {
                HStack {
                    Text("Add to Cart")
                        .fontWeight(.bold)
                        .foregroundColor(.white) // Menyesuaikan warna teks dengan warna ikon
                        .font(.system(size: 12))

                        
                }
                .padding(.horizontal, 140)
                .padding(.vertical, 15)// Menambahkan padding
                .background(Color(red: 0.0, green: 0.5725490196078431, blue: 0.4235294117647059)) // Menambahkan latar belakang putih
                .cornerRadius(30) // Memberikan radius sudut

            }
        }
    }
}

#Preview {
    MenuDetail()
}
