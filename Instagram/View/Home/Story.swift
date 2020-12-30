//
//  Story.swift
//  Instagram
//
//  Created by Dev131 on 7/12/20.
//

import Foundation
import SwiftUI

struct Story: View {
    var img:String
    var body: some View {
        VStack {
            Image(img)
                .resizable()
                .aspectRatio(1,contentMode: .fit)
                .clipShape(Circle())
                .padding(4)
                .overlay(Circle().stroke(Color.orange, lineWidth: 1))
            Text("Your Name")
        }.frame(width: 90, height: 110)
    }
}
