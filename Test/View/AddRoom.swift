//
//  AddRoom.swift
//  Test
//
//  Created by user on 28.06.2021.
//

import SwiftUI

struct AddRoom: View {
    @Binding var transition:Int
    @State var nameRoom = ""
    @State var colums = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ZStack{
            VStack(spacing:0){
                ZStack{
                    Rectangle().frame(width: UIScreen.main.bounds.width, height: 100, alignment: .center).foregroundColor(Color("bu"))
                    ZStack{
                        Text("Add Room").font(.system(size: 16, weight: .semibold, design: .default)).foregroundColor(Color.white)
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
                VStack(alignment:.leading){
                    Text("Enter Room’s name").font(.system(size: 12, weight: .regular, design: .default)).foregroundColor(Color.init(#colorLiteral(red: 0.5921568627, green: 0.5921568627, blue: 0.5921568627, alpha: 1)))
                    ZStack{
                        RoundedRectangle(cornerRadius: 12).strokeBorder(Color.init(#colorLiteral(red: 0.8274509804, green: 0.8274509804, blue: 0.8274509804, alpha: 1)),lineWidth: 1 ).frame(width: 345, height: 44, alignment: .center)
                        TextField("Hellow", text: $nameRoom).foregroundColor(Color("bu")).font(.system(size: 14, weight: .semibold, design: .default)).frame(width: 320)
                    }
                  
                    
                }.padding(.top,80)
                HStack{
                    Text("Enter Room’s name").font(.system(size: 12, weight: .regular, design: .default)).foregroundColor(Color.init(#colorLiteral(red: 0.5921568627, green: 0.5921568627, blue: 0.5921568627, alpha: 1)))
                    Spacer()
                }.frame(width: 345).padding(.top,30)
                ScrollView(.vertical, showsIndicators: false, content: {
                    LazyVGrid(columns: colums, content: {
                        ForEach(0..<5,id:\.self){ i in
                            Button(action: {}, label: {
                                VStack{
        //                            Image("").resizable().frame(width: 90, height: 90, alignment: .center)
                                    Circle().frame(width: 90, height: 90, alignment: .center)
                                    Text("Kitchen").font(.system(size: 12, weight: .regular, design: .default)).foregroundColor(Color("ye"))
                                }
                            })
                        }
                    
                    }).padding(.top)
                })
       
                
                
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct AddRoom_Previews: PreviewProvider {
    static var previews: some View {
        AddRoom(transition: .constant(1))
    }
}
