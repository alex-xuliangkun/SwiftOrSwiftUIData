//
//  ContentView.swift
//  App WatchKit Extension
//
//  Created by Taurus on 2022/8/23.
//

import SwiftUI

let tabTitleArray = ["首页","会玩","首页1","消息","我的"]
//let ScreenWidth = UIScreen.main.bounds.width

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView(.horizontal){
                HStack{
                        ForEach(tabTitleArray.indices, id:\.self){ index in
                            HStack{
                                Text("\(index)").frame(width: 60)
                            }.onTapGesture {
                                print("------")
                            }
                        }
                }
            }.background(Color.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
