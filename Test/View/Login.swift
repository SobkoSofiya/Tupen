//
//  Login.swift
//  Test
//
//  Created by user on 28.06.2021.
//

import SwiftUI

struct Login: View {
    @Binding var transition:Int
    @State var name = ""
    @State var password = ""
    var body: some View {
        ZStack{
            Image("").resizable().frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            Color.red
            VStack(spacing:0){
                Image("ic").resizable().frame(width: 123, height: 123, alignment: .center)
                Text("Smart Home").font(.system(size: 20, weight: .regular, design: .default)).foregroundColor(Color.white).padding(.top,10)
                VStack(alignment:.leading,spacing:0){
                    TextField("Username", text: $name).frame(width: 315, height: 24, alignment: .center)
                    Rectangle().frame(width: 315, height: 1, alignment: .center).foregroundColor(.white)
                }.padding(.bottom,80).padding(.top,129)
                VStack(alignment:.leading,spacing:0){
                    TextField("Password", text: $password).frame(width: 315, height: 24, alignment: .center)
                    Rectangle().frame(width: 315, height: 1, alignment: .center).foregroundColor(.white)
                }
                Button(action: {}, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 20).frame(width: 270, height: 60, alignment: .center).foregroundColor(Color("ye"))
                        Text("Enter Your House").font(.system(size: 14, weight: .bold, design: .default)).foregroundColor(Color.white)
                    }
                }).padding(.top,60)
                Button(action: {}, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 20).frame(width: 270, height: 60, alignment: .center).foregroundColor(Color("bu"))
                        Text("New Resident").font(.system(size: 14, weight: .regular, design: .default)).foregroundColor(Color.white)
                    }
                }).padding(.top,30)
                HStack{
                    Text("Forgot password?").font(.system(size: 14, weight: .thin, design: .default)).foregroundColor(Color.white)
                    Text("Click here").font(.system(size: 14, weight: .regular, design: .default)).foregroundColor(Color.white).underline()
                }.padding(.top,50)
                Spacer()
            }.offset(x: 0, y: 150)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login(transition: .constant(1))
    }
}
