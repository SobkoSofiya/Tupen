//
//  ContentView.swift
//  Test
//
//  Created by user on 28.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State var isShareSheetShowing  = false
    var body: some View {
        Button(action: {
           shareButton()
        }, label: {
            Image(systemName: "square.and.arrow.up")
        })
        
    }
    func shareButton() {
        isShareSheetShowing.toggle()
        let url = URL(string: "https://apple.com")
        let open = UIActivityViewController(activityItems: [url!], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(open, animated: true, completion: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
