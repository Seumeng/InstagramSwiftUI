//
//  Profile.swift
//  Instagram
//
//  Created by Dev131 on 7/12/20.
//

import Foundation
import SwiftUI

struct Profile:View {
    @State var offSetActionSheet = UIScreen.main.bounds.height
    var body: some View {
        ZStack(alignment: .leading) {
            ProfileMain(offSetActionSheet: $offSetActionSheet).opacity(offSetActionSheet == 0 ? 0.3 : 1.0)
            
        }
    }
    
}


struct ProfileMain: View {
    @State var myPhoto = true
    @Binding var offSetActionSheet: CGFloat
    var body: some View {
        let columns: [GridItem] =
            Array(repeating: .init(.flexible()), count: 3)
        NavigationView {
           
            ScrollView(.vertical, showsIndicators: false){
                VStack {
                    HStack{
                        VStack{
                            ZStack {
                                Image("soda")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                                
                                Image(systemName: "plus.circle.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.blue)
                                    .padding(1)
                                    .background(Color.white)
                                    .clipShape(Circle())
                                    .offset(x: 35, y: 35)
                            }
                            Text("DJ SODA").bold()
                        }
                        Spacer()
                        Button(action: {}, label: {
                            Text("200\nPost").foregroundColor(.black)
                                .multilineTextAlignment(.center)
                        })
                        Spacer()
                        Button(action: {}, label: {
                            Text("10000\nFollower").foregroundColor(.black)
                                .multilineTextAlignment(.center)
                        })
                        Spacer()
                        Button(action: {}, label: {
                            Text("104\nFollowing").foregroundColor(.black)
                                .multilineTextAlignment(.center)
                        })
                        Spacer()
                    }.padding(.horizontal)
                    
                    //edit button
                    
                    Button(action: {}, label: {
                        Text("Edit profile")
                            .foregroundColor(.black)
                            .padding(10)
                    }).frame(width: UIScreen.main.bounds.width - 25)
                    .border(Color.gray, width: 1)
                    .padding(.vertical)
                    HStack(spacing: UIScreen.main.bounds.width / 3) {
                        Button(action: {
                            self.myPhoto = true
                        }, label: {
                            Image(systemName: "square.grid.3x3.fill.square")
                                .font(.title)
                                .foregroundColor(.black)
                        })
                        Button(action: {
                            self.myPhoto = false
                        }, label: {
                            Image(systemName: "rectangle.stack.person.crop.fill")
                                .font(.title)
                                .foregroundColor(.black)
                        })
                    }
                    HStack {
                        Rectangle()
                            .fill(myPhoto ? Color.black: Color.clear)
                            .frame(width: UIScreen.main.bounds.width / 2 , height: 1)
                        
                        Rectangle()
                            .fill(myPhoto ? Color.clear: Color.black)
                            .frame(width: UIScreen.main.bounds.width / 2, height: 1)
                    }
                    if myPhoto {
                        LazyVGrid(columns: columns, spacing: 1){
                            ForEach(1..<6){i in
                                MyPhotos(i: i)
                            }
                            ForEach(1..<6){i in
                                MyPhotos(i: i)
                            }
                        }.offset(y: -5)
                        
                    }else{
                        Text("other view")
                    }
                    
                }.offset(y: -45)
            }
            .navigationBarItems(leading: Text("DJ SODA").bold().font(.title),
                                trailing: HStack {
                                    Button(action: {}, label: {
                                        Image(systemName: "plus")
                                            .font(.title)
                                            .foregroundColor(.black)
                                    })
                                    Button(action: {
                                        offSetActionSheet = 0
                                    }, label: {
                                        Image(systemName: "slider.horizontal.3")
                                            .font(.title)
                                            .foregroundColor(.black)
                                    })
                                })
            
        }
    }
}


struct MyPhotos: View {
    var i:Int
    var body: some View {
        Button(action: {}, label: {
            Image("p\(i)")
                .resizable()
                .aspectRatio(1,contentMode: .fit)
                .frame(width: (UIScreen.main.bounds.width - 1) / 3)
        })
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}


struct CustomActionSheet : View {
    
    @State var show1 = false
    @State var show2 = false
    @State var show3 = false
    @State var show4 = false
    @State var count = 0
    
    var body : some View{
        VStack(spacing: 15){
            Rectangle().frame(width: 30, height: 2).foregroundColor(.gray)
            Toggle(isOn: self.$show1) {
                
                Text("Notifications")
            }
            Toggle(isOn: self.$show2) {
                
                Text("Likes")
            }
            Toggle(isOn: self.$show3) {
                
                Text("Comments")
            }
            Toggle(isOn: self.$show4) {
                
                Text("Subscribers Count")
            }
            Stepper(onIncrement: {
                
                self.count += 1
                
            }, onDecrement: {
                
                if self.count != 0{
                    
                    self.count -= 1
                }
                
            }) {
                
                Text("Notifications Limit = \(self.count)")
            }
            
        }.padding(.bottom, (UIApplication.shared.windows.last?.safeAreaInsets.bottom)! + 10)
        .padding(.horizontal)
        .padding(.top,20).background(Color.green)
//        .background(Color(UIColor.systemBackground))
        .cornerRadius(25)
        
    }
}



//struct CustomActionSheet: View {
//    var body: some View {
//        VStack(alignment: .leading, spacing: 20) {
//            Spacer()
//            Rectangle().frame(width: 20, height: 2)
//            HStack {
//                Image(systemName: "seal")
//                Text("Setting")
//            }
//            HStack {
//                Image(systemName: "memories.badge.plus")
//                Text("Archive")
//            }
//            HStack {
//                Image(systemName: "timer")
//                Text("Your Activity")
//            }
//            HStack {
//                Image(systemName: "seal")
//                Text("QR Code")
//            }
//            HStack {
//                Image(systemName: "seal")
//                Text("Saved")
//            }
//            HStack {
//                Image(systemName: "seal")
//                Text("Close Friends")
//            }
//            HStack {
//                Image(systemName: "seal")
//                Text("Discover People")
//            }
//        }
//        .frame(width: UIScreen.main.bounds.width)
//        .edgesIgnoringSafeArea(.bottom)
//        .padding()
//    }
//}
