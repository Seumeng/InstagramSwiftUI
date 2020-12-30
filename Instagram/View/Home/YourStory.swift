//
//  YourStory.swift
//  Instagram
//
//  Created by Dev131 on 7/12/20.
//

import Foundation
import SwiftUI


struct YourStory: View {
    var body: some View {
        Button(action: {}, label: {
            VStack {
                ZStack(alignment: .bottomTrailing){
                    Image("soda")
                        .resizable()
                        .aspectRatio(1,contentMode: .fit)
                        .clipShape(Circle())
                        .padding(4)
                    
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .padding(5)
                        .foregroundColor(.blue)
                        .background(Color.white)
                        .clipShape(Circle())
                        .offset(x: 10)
                }
                Text("Your Story")
            }.frame(width: 90, height: 110)
        })
    }
}
