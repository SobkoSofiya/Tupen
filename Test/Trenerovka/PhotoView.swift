//
//  PhotoView.swift
//  Test
//
//  Created by user on 28.06.2021.
//

import SwiftUI

struct PhotoView: View {
    @State var isShowPhotoLibrary = false
    var body: some View {
        ZStack{
        Button(action: {
            isShowPhotoLibrary.toggle()
        }, label: {}
        )
        .sheet(isPresented: $isShowPhotoLibrary, content: {
            ImagePickerView(isPresented: $isShowPhotoLibrary)
               
        })
        }
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
