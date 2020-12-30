//
//  ContentView.swift
//  Instagram
//
//  Created by Dev131 on 4/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                Home().tabItem {
                    Image(systemName: "house.fill")
                }
                Text("Activity").tabItem {
                    Image(systemName: "magnifyingglass")
                }
                Text("Activity").tabItem {
                    Image(systemName: "plus.app")
                }
                Text("Activity").tabItem {
                    Image(systemName: "heart")
                }
                Profile().tabItem {
                    Image(systemName: "person.circle")
                }
            }.accentColor(.red)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
