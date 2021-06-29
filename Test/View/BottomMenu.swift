//
//  BottomMenu.swift
//  Test
//
//  Created by user on 28.06.2021.
//

import SwiftUI

struct BottomMenu: View {
    @Binding var transition :Int
    @State var selection = 0
    var body: some View {
        ZStack{
        TabView(selection:$selection){
          Main(transition: $transition ).tag(0).tabItem {
            Image(selection == 0 ? "remain" : "main")
            Text("home")
            }
            Static(transition: $transition ).tag(1).tabItem {
              Image(selection == 1 ? "restatic" : "static")
              Text("home")
              }
            Routines(transition: $transition ).tag(2).tabItem {
              Image(selection == 2 ? "reroutine" : "routine")
              Text("home")
              }
            Profile(transition: $transition ).tag(3).tabItem {
              Image(selection == 3 ? "renot" : "not")
              Text("home")
              }
        }
        }.edgesIgnoringSafeArea(.all).accentColor(Color("ye"))
    }
}

struct BottomMenu_Previews: PreviewProvider {
    static var previews: some View {
        BottomMenu(transition: .constant(1))
    }
}
