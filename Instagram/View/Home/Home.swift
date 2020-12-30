//
//  Home.swift
//  Instagram
//
//  Created by Dev131 on 7/12/20.
//

import Foundation
import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading){
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 20) {
                            YourStory()
                            ForEach(1..<6){i in
                                Button(action: {
                                    print(i)
                                }, label: {
                                    Story(img: "p\(i)")
                                })
                            }
                        }
                    }//story scroll
                    Divider()
                    Post(photo: "p3", name: "Aditya")
                    Post(photo: "soda", name: "DJ SODA")
                    Post(photo: "p1", name: "Zaira Naqvi")
                    Post(photo: "p2", name: "Renejune")
                    Post(photo: "p4", name: "Naraisa Kamad")
                    Post(photo: "girl", name: "GIRL")
                    
                }.padding(.top, -40)
            }
            .navigationBarItems(
                leading: Button(action: {}, label: {
                    Text("Instagram")
                        .foregroundColor(.black)
                        .font(Font.custom("Lobster-Regular", size: 30))
                }),
                trailing: Button(action: {}, label: {
                    Image("direct")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                }))////end Header Navigation
        }
    }
}
