//
//  Photo.swift
//  Test
//
//  Created by user on 28.06.2021.
//
import Foundation
import SwiftUI
import UIKit

struct ImagePickerView: UIViewControllerRepresentable {
 
    var sourceType: UIImagePickerController.SourceType = .camera
    @Binding var isPresented: Bool
    
    func makeCoordinator() -> ImagePickerViewCoordinator {
            return ImagePickerViewCoordinator(isPresented: $isPresented)
        }
 
    func makeUIViewController(context: Context) -> UIImagePickerController {
           let pickerController = UIImagePickerController()
           pickerController.sourceType = sourceType
           pickerController.delegate = context.coordinator
           return pickerController
       }

       func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
       }
}


class ImagePickerViewCoordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @Binding var isPresented: Bool
    
    init(isPresented: Binding<Bool>) {
        self._isPresented = isPresented
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            let nameImage = "\(UUID().uuidString).png"
            
            let dateFormatter = DateFormatter()
            dateFormatter.timeStyle = DateFormatter.Style.short
            let time = dateFormatter.string(from: Date())
            
            
            
            //Realm
//            let realm = try! Realm()
//            let photoObject = PhotoModelObject()
//            photoObject.time = time
//            photoObject.photoName = nameImage
//            try! realm.write {
//                realm.add(photoObject, update: .modified)
//            }
//
            
            Helper().saveImageToDocumentDirectory(image: image, name: nameImage)
        }
        self.isPresented = false
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.isPresented = false
    }
    
}


class Helper {
    func saveImageToDocumentDirectory(image: UIImage, name: String ) {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let fileName = name
        let fileURL = documentsDirectory.appendingPathComponent(fileName)
        if let data = image.jpegData(compressionQuality: 1.0),!FileManager.default.fileExists(atPath: fileURL.path){
            do {
                try data.write(to: fileURL)
            } catch {
                print("error saving file:", error)
            }
        }
    }


    func loadImageFromDocumentDirectory(nameOfImage : String) -> UIImage {
        let nsDocumentDirectory = FileManager.SearchPathDirectory.documentDirectory
        let nsUserDomainMask = FileManager.SearchPathDomainMask.userDomainMask
        let paths = NSSearchPathForDirectoriesInDomains(nsDocumentDirectory, nsUserDomainMask, true)
        if let dirPath = paths.first{
            let imageURL = URL(fileURLWithPath: dirPath).appendingPathComponent(nameOfImage)
            let image    = UIImage(contentsOfFile: imageURL.path)
            return image!
        }
        return UIImage.init(named: "avatar")!
    }
}
