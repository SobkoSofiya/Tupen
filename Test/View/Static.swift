//
//  Static.swift
//  Test
//
//  Created by user on 28.06.2021.
//

import SwiftUI

struct Static: View {
    @Binding var transition:Int
    @State var selection = 3
    var body: some View {
        ZStack{
            Color("bu")
            VStack{
                HStack(spacing:150){
                    VStack(alignment:.leading   ,spacing:20){
                        Text("Statics").font(.system(size: 24, weight: .bold, design: .default)).foregroundColor(Color.white)
                        HStack{
                            Button(action: {
                                selection = 1
                            }, label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20).frame(width: 60, height: 20, alignment: .center).foregroundColor(Color("ye")).opacity(selection == 1 ? 1 : 0)
                                    Text("Day").font(.system(size: 12, weight: .bold, design: .default)).foregroundColor(Color.white)
                                }
                            })
                            Button(action: {
                                selection = 2
                            }, label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20).frame(width: 60, height: 20, alignment: .center).foregroundColor(Color("ye")).opacity(selection == 2 ? 1 : 0)
                                    Text("Week").font(.system(size: 12, weight: .bold, design: .default)).foregroundColor(Color.white)
                                }
                            })
                            Button(action: {
                                selection = 3
                            }, label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20).frame(width: 60, height: 20, alignment: .center).foregroundColor(Color("ye")).opacity(selection == 3 ? 1 : 0)
                                    Text("Month").font(.system(size: 12, weight: .bold, design: .default)).foregroundColor(Color.white)
                                }
                            })
                        }.offset(x: -15, y: 0)
                    }
//                    Spacer()
                    ZStack{
                    Circle().strokeBorder(Color.white,lineWidth: 1 ).frame(width: 32, height: 32, alignment: .center)
                        Circle().strokeBorder(Color.white,lineWidth: 1 ).frame(width: 9, height: 9, alignment: .center).background(Circle().foregroundColor(Color.init(#colorLiteral(red: 1, green: 0, blue: 0.4196078431, alpha: 1)))).offset(x: 10.0, y: -10)
                    }
                }.padding(.horizontal)
                Image("func")
                
                Spacer()
                Rectangle().frame(width: UIScreen.main.bounds.height, height: 400, alignment: .center).foregroundColor(.white)
                
            }.offset(x: 0, y: 60)
            VStack{
                Spacer()
            ZStack{
                RoundedRectangle(cornerRadius: 20).frame(width: 335, height: 230, alignment: .center).foregroundColor(.white).shadow(color: Color.black.opacity(0.15), radius: 10, x: 0.0, y: 0.0)
                VStack(spacing:0){
                HStack{
                    Circle().frame(width: 9, height: 9, alignment: .center).foregroundColor(Color("ye"))
                    Text("AUG-2020").font(.system(size: 12, weight: .semibold, design: .default)).foregroundColor(Color.black)
                    Spacer()
                    Button(action: {}, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 16  ).frame(width: 100, height: 30, alignment: .center).foregroundColor(Color("ye"))
                            Text("Choose Date").font(.system(size: 12, weight: .semibold, design: .default)).foregroundColor(Color.white)
                        }
                    })
                }.padding(.horizontal).frame(width: 335).padding(.top,13)
              
                    Divider().frame(width: 335)
                    HStack(spacing:45){
                        VStack{
                            HStack(alignment:.bottom){
                            Text("337").font(.system(size: 32, weight: .semibold, design: .default)).foregroundColor(Color.black)
                            Text("KWH").font(.system(size: 12, weight: .semibold, design: .default)).foregroundColor(Color.black)
                            }
                            HStack{
                                Image("str").resizable().frame(width: 8, height: 14, alignment: .center)
                                Text("Decrease 27%").font(.system(size: 12, weight: .semibold, design: .default)).foregroundColor(Color.init(#colorLiteral(red: 0.6862745098, green: 0.6862745098, blue: 0.6862745098, alpha: 1)))
                            }
                        }
                        Divider().frame(width: 1, height: 35, alignment: .center)
                        VStack{
                            HStack(alignment:.bottom){
                            Text("163").font(.system(size: 32, weight: .semibold, design: .default)).foregroundColor(Color.black)
                            Text("USD").font(.system(size: 12, weight: .semibold, design: .default)).foregroundColor(Color.black)
                            }
                            HStack{
                                Image("str").resizable().frame(width: 8, height: 14, alignment: .center)
                                Text("Decrease 19%").font(.system(size: 12, weight: .semibold, design: .default)).foregroundColor(Color.init(#colorLiteral(red: 0.6862745098, green: 0.6862745098, blue: 0.6862745098, alpha: 1)))
                            }
                        }
                    }.padding(.top,30).padding(.bottom,33)
                    Button(action: {
                        
                    }, label: {
                        ZStack{
                            Rectangle().frame(width: 335, height: 20, alignment: .center).foregroundColor(Color.init(#colorLiteral(red: 0.1882352941, green: 0.4784313725, blue: 1, alpha: 1))).offset( y: -18)
                        RoundedRectangle(cornerRadius: 20).frame(width: 335, height: 55, alignment: .center).foregroundColor(Color.init(#colorLiteral(red: 0.1882352941, green: 0.4784313725, blue: 1, alpha: 1)))
                            Text("View Detail").font(.system(size: 12, weight: .semibold, design: .default)).foregroundColor(Color.white)
                        }
                    })
                 
                }
            }.padding(.bottom,150)
                
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Static_Previews: PreviewProvider {
    static var previews: some View {
        Static(transition: .constant(1))
    }
}
