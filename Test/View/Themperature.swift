//
//  Themperature.swift
//  Test
//
//  Created by user on 28.06.2021.
//

import SwiftUI

struct Themperature:View {
    @Binding var flag:Bool
    var body: some View{
        ZStack{
            VStack(spacing:0){
                HStack{
                    VStack(alignment:.leading){
                        Text("Thermostat").font(.system(size: 24, weight: .semibold, design: .default)).foregroundColor(Color.black)
                        Text("Kitchen").font(.system(size: 12, weight: .semibold, design: .default)).foregroundColor(Color.black)
                    }
                 Spacer()
                    Toggle(isOn: $flag, label: {
                    
                    }).frame(width: 60, height: 30, alignment: .center)
                }.padding(.horizontal,40).padding(.top,35)
                HStack{
                    VStack{
                    HStack(alignment:.top){
                        Text("45").font(.system(size: 64, weight: .semibold, design: .default)).foregroundColor(Color("ye"))
                        Text("º").font(.system(size: 40, weight: .semibold, design: .default)).foregroundColor(Color.init(#colorLiteral(red: 0.537254902, green: 0.5411764706, blue: 0.5529411765, alpha: 1)))
                    }
                        Text("Temperature,ºC").font(.system(size: 14, weight: .semibold, design: .default)).foregroundColor(Color.init(#colorLiteral(red: 0.537254902, green: 0.5411764706, blue: 0.5529411765, alpha: 1)))
                    }.padding(.leading,40)
//                    fghtre
                    Spacer()
                }.padding(.top,130)
                HStack{
                    VStack{
                        Image("").resizable().frame(width: 36, height: 36, alignment: .center)
                        Text("Heating").font(.system(size: 14, weight: .semibold, design: .default)).foregroundColor(Color.init(#colorLiteral(red: 0.537254902, green: 0.5411764706, blue: 0.5529411765, alpha: 1)))
                    }
                    VStack{
                        Image("").resizable().frame(width: 36, height: 36, alignment: .center)
                        Text("Cool").font(.system(size: 14, weight: .semibold, design: .default)).foregroundColor(Color.init(#colorLiteral(red: 0.537254902, green: 0.5411764706, blue: 0.5529411765, alpha: 1)))
                    }
                    Spacer()
                }.padding(.top,150).padding(.leading,40)
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
    }
}


struct Themperature_Previews: PreviewProvider {
    static var previews: some View {
        Themperature(flag: .constant(false))
    }
}
