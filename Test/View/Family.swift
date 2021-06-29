//
//  Family.swift
//  Test
//
//  Created by user on 28.06.2021.
//

import SwiftUI

struct Family: View {
    @Binding var transition:Int
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Family_Previews: PreviewProvider {
    static var previews: some View {
        Family(transition: .constant(1))
    }
}
