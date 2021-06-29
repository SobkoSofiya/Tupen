//
//  AddDevice.swift
//  Test
//
//  Created by user on 28.06.2021.
//

import SwiftUI

struct AddDevice: View {
    @Binding var transition:Int
    var body: some View {
        ZStack{
            VStack(spacing:0){
                ZStack{
                    Rectangle().frame(width: UIScreen.main.bounds.width, height: 100, alignment: .center).foregroundColor(Color("bu"))
                    ZStack{
                        Text("Add Device").font(.system(size: 16, weight: .semibold, design: .default)).foregroundColor(Color.white)
                    HStack{
                        Image("ar")
                            .resizable().frame(width: 24, height: 24, alignment: .center)
                        Spacer()
                        Button(action: {}, label: {
                            Text("SAVE").font(.system(size: 14, weight: .regular, design: .default)).foregroundColor(Color.white)
                        })
                     
                    }.padding(.horizontal)
                    }.padding(.top,40)
                }
                Text("             Plug in the smart outlet\nyour device wil connect automaticly").font(.system(size: 15, weight: .bold, design: .default)).foregroundColor(Color("bu")).padding(.top,65)
                Image("de").resizable().frame(width: 210, height: 251
                                              , alignment: .center).padding(.top,70)
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
            }
}

struct AddDevice_Previews: PreviewProvider {
    static var previews: some View {
        AddDevice(transition: .constant(1))
    }
}
