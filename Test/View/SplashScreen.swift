//
//  SplashScreen.swift
//  Test
//
//  Created by user on 28.06.2021.
//

import SwiftUI

struct SplashScreen: View {
    @Binding var transition:Int
    @State var selection = 0
    var body: some View {
        ZStack{
            VStack(spacing:0){
                TabView(selection:$selection){
                    SplashScreeOne().tag(0)
                    SplashScreeTwo().tag(1)
                    SplashScreeThree().tag(2)
                }.tabViewStyle(PageTabViewStyle()).offset(y:120)
                .frame( height: 600, alignment: .center)
                Spacer()
                HStack(spacing:100){
                    Button(action: {
                        
                    }, label: {
                        Text("Skip").font(.system(size: 18, weight: .thin, design: .default)).foregroundColor(Color("bu"))
                    })
                    
                    HStack{
                        RoundedRectangle(cornerRadius: 5).frame(width: selection == 0 ?  24 : 12, height:7, alignment: .center).foregroundColor(selection == 0 ?  Color("ye") : Color.init(#colorLiteral(red: 0.05490196078, green: 0.05490196078, blue: 0.07058823529, alpha: 0.1)))
                        RoundedRectangle(cornerRadius: 5).frame(width: selection == 1 ?  24 : 12, height:7, alignment: .center).foregroundColor(selection == 1 ?  Color("ye") : Color.init(#colorLiteral(red: 0.05490196078, green: 0.05490196078, blue: 0.07058823529, alpha: 0.1)))
                        RoundedRectangle(cornerRadius: 5).frame(width: selection == 2 ?  24 : 12, height:7, alignment: .center).foregroundColor(selection == 2 ?  Color("ye") : Color.init(#colorLiteral(red: 0.05490196078, green: 0.05490196078, blue: 0.07058823529, alpha: 0.1)))
                        
                    }.animation(.linear)
                    Button(action: {
                        
                    }, label: {
                        Text("Next").font(.system(size: 18, weight: .regular, design: .default)).foregroundColor(Color("ye"))
                    })
                }.padding(.bottom,44)
            }.offset(x: 0, y: 0 )
        }.edgesIgnoringSafeArea(.all)
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen(transition: .constant(1))
    }
}


struct SplashScreeOne:View {
    var body: some View{
        ZStack{
            VStack(spacing:0){
                Image("im1").resizable().frame(width: UIScreen.main.bounds.width    , height: 250, alignment: .center).padding(.bottom,80)
                Text("Convenience").font(.system(size: 25, weight: .bold, design: .default)).foregroundColor(Color("bu"))
                Text("Control your home device\n  using a single app from\n   anywhere in the world").font(.system(size: 16, weight: .thin, design: .default)).foregroundColor(Color("bu")).padding(.top,10)
            }
        }
    }
}


struct SplashScreeTwo:View {
    var body: some View{
        ZStack{
            VStack(spacing:0){
                Image("im2").resizable().frame(width: UIScreen.main.bounds.width    , height: 250, alignment: .center).padding(.bottom,80)
                Text("Automate").font(.system(size: 25, weight: .bold, design: .default)).foregroundColor(Color("bu"))
                Text("Switch through different scenes\nand quick action for fast\nmanagement of your home").font(.system(size: 16, weight: .thin, design: .default)).foregroundColor(Color("bu")).padding(.top,10)
            }
        }
    }
}

struct SplashScreeThree:View {
    var body: some View{
        ZStack{
            VStack(spacing:0){
                Image("im3").resizable().frame(width: UIScreen.main.bounds.width    , height: 250, alignment: .center).padding(.bottom,80)
                Text("Automate").font(.system(size: 25, weight: .bold, design: .default)).foregroundColor(Color("bu"))
                Text("Switch through different scenes\nand quick action for fast\nmanagement of your home").font(.system(size: 16, weight: .thin, design: .default)).foregroundColor(Color("bu")).padding(.top,10)
            }
        }
    }
}
