//
//  Post.swift
//  Instagram
//
//  Created by Dev131 on 7/12/20.
//

import Foundation
import SwiftUI

struct Post: View {
    
    var photo:String
    var name:String
    
    @State var comment = ""
    
    @State var heart = false
    
    @State var totalHeart = Int.random(in: 1000...200000)
    @State var hour = Int.random(in: 1..<20)
    
    var body: some View {
        VStack {
            HStack(spacing: 15){
                Image(photo)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(name)
                }
                Spacer()
                Button(action: {}, label: {
                    Text("...").foregroundColor(.black).bold().font(Font.system(size: 20))
                })
            }.padding(.horizontal)
            Image(photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width)
            VStack(alignment: .leading) {
                HStack(spacing: 20) {
                    Button(action: {
                        self.heart.toggle()
                    }, label: {
                        Image(systemName: heart ? "heart.fill" : "heart")
                            .resizable().frame(width: 25, height: 25)
                            .foregroundColor( heart ? .red : .black )
                    })
                    Button(action: {}, label: {
                        Image(systemName: "message")
                            .resizable().frame(width: 25, height: 25)
                            .rotationEffect(.degrees(-90))
                            .foregroundColor(.black)
                    })
                    Button(action: {}, label: {
                        Image("direct")
                            .resizable().frame(width: 25, height: 25)
                            .foregroundColor(.black)
                    })
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "bookmark")
                            .resizable().frame(width: 25, height: 25)
                            .foregroundColor(.black)
                    })
                }
                Text("\(heart ?  totalHeart+1 : totalHeart) Likes")
                    .font(Font.system(size: 17))
                    .padding(.vertical, 4)
                
                Text("\(name) Another Eropa League Win!")
                    .font(Font.system(size: 13))
                HStack {
                    Image("soda")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    TextField("Add a comment", text: $comment)
                        
                }
                Text("\(hour)hours ago")
                    .foregroundColor(.gray)
                    .font(Font.system(size: 15))
            }.padding(.horizontal)
        }.padding(.top)
    }
}
