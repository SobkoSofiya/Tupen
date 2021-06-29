//
//  StaticDetails.swift
//  Test
//
//  Created by user on 28.06.2021.
//

import SwiftUI

struct StaticDetails: View {
    @Binding var transition:Int
    @State var selection = 1
    var body: some View {
        ZStack{
            VStack(spacing:0){
                
                ZStack{
                    Rectangle().frame(width: UIScreen.main.bounds.width, height: 200, alignment: .center).foregroundColor(Color("bu"))
                    ZStack{
                    Text("AUG - 2020").font(.system(size: 16, weight: .bold, design: .default)).foregroundColor(Color.white)
                        HStack{
                            Image("kr").resizable().frame(width: 24, height: 24, alignment: .center)
                            Spacer()
                        }.padding(.horizontal)
                    }.offset(x: 0, y: -20)
                }
                Group{
                ZStack{
                    RoundedRectangle(cornerRadius: 20).frame(width: 335, height: 123, alignment: .center).foregroundColor(.white).shadow(color: Color.black.opacity(0.15), radius: 10, x: 0.0, y: 0.0)
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
                }
                ZStack{
                RoundedRectangle(cornerRadius: 20).frame(width: 335, height: 500, alignment: .center).foregroundColor(Color.init(#colorLiteral(red: 0.999904573, green: 1, blue: 0.9998808503, alpha: 1))).shadow(color: Color.black.opacity(0.15), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0.0, y: 0.0)
                VStack{
                    HStack(spacing:0){
                        Button(action: {
                            selection = 1
                        }, label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 20).foregroundColor(selection == 1 ? Color("ye") : .white).frame(width: 170, height: 50, alignment: .center)
                                Rectangle().frame(width: 170, height: 20, alignment: .center).shadow(color: Color.black.opacity(0.05), radius: 10, x: 0.0, y: 10.0).foregroundColor(selection == 1 ? Color("ye") : .white).offset(x: 0, y: 15)
                                Rectangle().frame(width: 20, height: 50, alignment: .center).offset(x: 75).foregroundColor(selection == 1 ? Color("ye") : .white)
                                Text("ROOMS").font(.system(size: 14, weight: .semibold, design: .default)).foregroundColor(selection == 1 ? Color.white : Color.init(#colorLiteral(red: 0.6862745098, green: 0.6862745098, blue: 0.6862745098, alpha: 1)))
                            }
                        })
                        Button(action: {
                            selection = 2
                        }, label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 20).foregroundColor(selection == 2 ? Color("ye") : .white).frame(width: 170, height: 50, alignment: .center)
                                Rectangle().frame(width: 170, height: 20, alignment: .center).shadow(color: Color.black.opacity(0.05), radius: 10, x: 0.0, y: 10.0).foregroundColor(selection == 2 ? Color("ye") : .white).offset(x: 0, y: 15)
                                Text("DEVICES").font(.system(size: 14, weight: .semibold, design: .default)).foregroundColor(selection == 2 ? Color.white : Color.init(#colorLiteral(red: 0.6862745098, green: 0.6862745098, blue: 0.6862745098, alpha: 1)))
                            }
                        })
               
                    }
                    
                    ForEach(0..<5,id:\.self){ i in
                        Button(action: {}, label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 16).frame(width: 305, height: 60, alignment: .center).foregroundColor(Color.white).shadow(color: Color.black.opacity(0.05), radius: 10, x: 0.0, y: 0.0)
                                HStack{
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 16).foregroundColor(Color.init(#colorLiteral(red: 0.1882352941, green: 0.4784313725, blue: 1, alpha: 1))).frame(width: 60, height: 60, alignment: .center)
                                        Rectangle().frame(width: 20, height: 60, alignment: .center).offset(x: 20)
                                        Text("  70\nKWM").font(.system(size: 14, weight: .semibold, design: .default)).foregroundColor(Color.white)
                                    }
                                    VStack(alignment:.leading,spacing:2){
                                        Text("Bedroom").font(.system(size: 14, weight: .semibold, design: .default)).foregroundColor(Color.black)
                                        HStack{
                                            Image("str").resizable().frame(width: 8, height: 14, alignment: .center)
                                            Text("Decrease 27%").font(.system(size: 12, weight: .semibold, design: .default)).foregroundColor(Color.init(#colorLiteral(red: 0.6862745098, green: 0.6862745098, blue: 0.6862745098, alpha: 1)))
                                        }
                                    }
                                   Spacer()
                                    Image("ar").resizable().frame(width: 24, height: 24, alignment: .center).padding(.trailing,30)
                                }
                            }.frame(width: 305)
                        })
                    }
                    Spacer()
                }.frame(width: 335, height: 500, alignment: .center)
                }.padding(.top,30)
                }.offset(x: 0, y: -70)
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct StaticDetails_Previews: PreviewProvider {
    static var previews: some View {
        StaticDetails(transition: .constant(1))
    }
}
