//
//  Massage.swift
//  Test
//
//  Created by user on 28.06.2021.
//

import SwiftUI

struct Massage: View {
    @Binding var transition:Int
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Massage_Previews: PreviewProvider {
    static var previews: some View {
        Massage(transition: .constant(1))
    }
}
