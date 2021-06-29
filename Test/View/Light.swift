//
//  Light.swift
//  Test
//
//  Created by user on 28.06.2021.
//

import SwiftUI

struct Light: View {
    @Binding var transition:Int
    @State var selection = 1
    @State var flag = false
    var body: some View {
        ZStack{
            VStack(spacing:0){
                ZStack{
                    Rectangle().frame(width: UIScreen.main.bounds.width, height: 100, alignment: .center).foregroundColor(Color("bu"))
                    ZStack{
                        Text("Kitchen").font(.system(size: 16, weight: .semibold, design: .default)).foregroundColor(Color.white)
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
                ZStack{
                    Rectangle().frame(width: UIScreen.main.bounds.width, height: 90, alignment: .center).foregroundColor(.white).shadow(color: Color.black.opacity(0.15), radius: 10, x: 0.0, y: 0.0)
                    HStack{
                        Button(action: {
                            selection = 1
                        }, label: {
                            VStack{
                                Image("light").resizable().frame(width: 32, height: 32, alignment: .center)
                                Text("Light").font(.system(size: 10, weight: .regular, design: .default)).foregroundColor(selection == 1 ? Color("ye")  : Color.init(#colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)))
                            }
                        }).frame(width: UIScreen.main.bounds.width/5, alignment: .center)
                        Button(action: {
                            selection = 2
                        }, label: {
                            VStack{
                                Image("light").resizable().frame(width: 32, height: 32, alignment: .center)
                                Text("Thermostat").font(.system(size: 10, weight: .regular, design: .default)).foregroundColor(selection == 2 ? Color("ye")  : Color.init(#colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)))
                            }
                        }).frame(width: UIScreen.main.bounds.width/5, alignment: .center)
                        Button(action: {
                            selection = 3
                        }, label: {
                            VStack{
                                Image("light").resizable().frame(width: 32, height: 32, alignment: .center)
                                Text("Fridge").font(.system(size: 10, weight: .regular, design: .default)).foregroundColor(selection == 3 ? Color("ye")  : Color.init(#colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)))
                            }
                        }).frame(width: UIScreen.main.bounds.width/5, alignment: .center)
                        Button(action: {
                            selection = 4
                        }, label: {
                            VStack{
                                Image("light").resizable().frame(width: 32, height: 32, alignment: .center)
                                Text("Fans").font(.system(size: 10, weight: .regular, design: .default)).foregroundColor(selection == 4 ? Color("ye")  : Color.init(#colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)))
                            }
                        }).frame(width: UIScreen.main.bounds.width/5, alignment: .center)
                        Button(action: {
                            selection = 5
                        }, label: {
                            VStack{
                                Image("light").resizable().frame(width: 32, height: 32, alignment: .center)
                                Text("Speaker").font(.system(size: 10, weight: .regular, design: .default)).foregroundColor(selection == 5 ? Color("ye")  : Color.init(#colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)))
                            }
                        }).frame(width: UIScreen.main.bounds.width/5, alignment: .center)
                    }
                }
                LightView(flag: $flag)
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Light_Previews: PreviewProvider {
    static var previews: some View {
        Light(transition: .constant(1))
    }
}


struct LightView:View {
    @Binding var flag:Bool
    var body: some View{
        ZStack{
            VStack(spacing:0){
                HStack{
                    VStack(alignment:.leading){
                        Text("Main lights").font(.system(size: 24, weight: .semibold, design: .default)).foregroundColor(Color.black)
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
                        Text("lm").font(.system(size: 12, weight: .semibold, design: .default)).foregroundColor(Color.init(#colorLiteral(red: 0.537254902, green: 0.5411764706, blue: 0.5529411765, alpha: 1)))
                    }
                        Text("light strenght").font(.system(size: 14, weight: .semibold, design: .default)).foregroundColor(Color.init(#colorLiteral(red: 0.537254902, green: 0.5411764706, blue: 0.5529411765, alpha: 1)))
                    }.padding(.leading,40)
                    Spacer()
                }.padding(.top,130)
                HStack{
                    VStack{
                        Image("").resizable().frame(width: 36, height: 36, alignment: .center)
                        Text("12kw").font(.system(size: 14, weight: .semibold, design: .default)).foregroundColor(Color.init(#colorLiteral(red: 0.537254902, green: 0.5411764706, blue: 0.5529411765, alpha: 1)))
                    }
                    VStack{
                        Image("").resizable().frame(width: 36, height: 36, alignment: .center)
                        Text("Hue").font(.system(size: 14, weight: .semibold, design: .default)).foregroundColor(Color.init(#colorLiteral(red: 0.537254902, green: 0.5411764706, blue: 0.5529411765, alpha: 1)))
                    }
                    Spacer()
                }.padding(.top,150).padding(.leading,40)
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
    }
}
