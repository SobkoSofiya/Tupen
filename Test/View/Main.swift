//
//  Main.swift
//  Test
//
//  Created by user on 28.06.2021.
//

import SwiftUI

struct Main: View {
    @State var selection = 1
    @Binding var transition:Int
    @State var selectionButton = 12345
    @State var colums = [
        GridItem(.flexible()),
        GridItem(.flexible())
        
    ]
    @State var showBottomMenu = false
    var body: some View {
        ZStack{
            VStack(spacing:0){
                
                ZStack{
                    Rectangle().frame(width: UIScreen.main.bounds.width, height: 150, alignment: .center).foregroundColor(Color("bu"))
                    HStack{
                        VStack(alignment:.leading,spacing:0){
                            Text("Your Home").font(.system(size: 24, weight: .bold, design: .default)).foregroundColor(Color.white).padding(.leading).padding(.bottom,10)
                            HStack{
                                Image("pin").resizable().frame(width: 12, height: 12, alignment: .center)
                                Text("2715 Ash Dr. San Jose, South Dakota 83475e").font(.system(size: 12, weight: .thin, design: .default)).foregroundColor(Color.white)
                            }.padding(.leading).padding(.bottom,34)
                            HStack{
                                Button(action: {
                                    selection = 1
                                }, label: {
                                    VStack(spacing:8){
                                        Text("ROOMS").font(.system(size: 15, weight: .regular, design: .default)).foregroundColor(Color.white).opacity(selection == 1 ? 1 : 0.5)
                                        Rectangle().frame(width: 80, height: 6, alignment: .center).foregroundColor(Color("ye")).opacity(selection == 1 ? 1 : 0)
                                    }
                                })
                                Button(action: {
                                    selection = 2
                                }, label: {
                                    VStack(spacing:8){
                                        Text("DEVICES").font(.system(size: 15, weight: .regular, design: .default)).foregroundColor(Color.white).opacity(selection == 2 ? 1 : 0.5)
                                        Rectangle().frame(width: 80, height: 6, alignment: .center).foregroundColor(Color("ye")).opacity(selection == 2 ? 1 : 0)
                                    }
                                })
                            }
                          
                        }
                        Spacer()
                        VStack(spacing:23){
                            ZStack{
                            Circle().strokeBorder(Color.white,lineWidth: 1 ).frame(width: 32, height: 32, alignment: .center)
                                Circle().strokeBorder(Color.white,lineWidth: 1 ).frame(width: 9, height: 9, alignment: .center).background(Circle().foregroundColor(Color.init(#colorLiteral(red: 1, green: 0, blue: 0.4196078431, alpha: 1)))).offset(x: 10.0, y: -10)
                            }
                            Button(action: {}, label: {
                                Image("plus").resizable().frame(width: 32, height: 32, alignment: .center)
                            })
                          
                        }.padding(.trailing)
                    }.padding(.top,30)
                    
                }
                ScrollView(.vertical, showsIndicators: false, content: {
                    LazyVGrid(columns: colums, spacing:20,content: {
                        ForEach(0..<5,id:\.self){ i in
                            Button(action: {
                                selectionButton = i
                            }, label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20).frame(width: 150, height: 130, alignment: .center).shadow(color: Color.black.opacity(0.15), radius: 10, x: 0.0, y: 0.0).foregroundColor(selectionButton == i ? Color("ye") : .white)
                                    VStack{
                                        Image(selectionButton != i ? "re1" : "1").resizable().frame(width: 64, height: 64, alignment: .center)
                                        Text("Living Room").font(.system(size: 12, weight: .bold, design: .default)).foregroundColor(Color.init(#colorLiteral(red: 0.05490196078, green: 0.05490196078, blue: 0.07058823529, alpha: 1)))
                                        Text("Your Home").font(.system(size: 12, weight: .regular, design: .default)).foregroundColor(Color.init(#colorLiteral(red: 0.05490196078, green: 0.05490196078, blue: 0.07058823529, alpha: 1))).opacity(0.2)
                                    }
                                }
                            })
                        }
                    }).frame(width: 350, alignment: .center).padding(.top)
                })

                Spacer()
            }
            if !showBottomMenu{
                VStack{
                    Spacer()
                    BottomMenuAddRoom()
                }
              
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main(transition: .constant(1))
    }
}


struct BottomMenuAddRoom:View {
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 60).frame(width: UIScreen.main.bounds.width, height: 270, alignment: .center).foregroundColor(Color.white).shadow(color: Color.black.opacity(0.15), radius: 10, x: 0.0, y: 0.0)
            VStack{
                HStack{
                    Text("Add new").font(.system(size: 24, weight: .semibold, design: .default)).foregroundColor(Color.black).padding(.leading,25)
                    Spacer()
                }
                Divider()
                Button(action: {}, label: {
                    HStack(spacing:30){
                        Image("key").resizable().frame(width: 64, height: 64, alignment: .center)
                        Text("Add new Room").font(.system(size: 16, weight: .semibold, design: .default)).foregroundColor(Color("ye"))
                        Spacer()
                    }.frame(width: 315, alignment: .center)
                })
                Divider().frame(width: 315, alignment: .center)
                Button(action: {}, label: {
                    HStack(spacing:30){
                        Image("key").resizable().frame(width: 64, height: 64, alignment: .center)
                        Text("Add new Device").font(.system(size: 16, weight: .semibold, design: .default)).foregroundColor(Color.init(#colorLiteral(red: 0.7529411765, green: 0.7529411765, blue: 0.7529411765, alpha: 1)))
                        Spacer()
                    }.frame(width: 315, alignment: .center)
                })
            }
        }
    }
}
