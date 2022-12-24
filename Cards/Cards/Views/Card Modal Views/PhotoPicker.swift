//
//  PhotoPicker.swift
//  Cards
//
//  Created by Eden on 2022/12/24.
//

import SwiftUI
import PhotosUI

struct PhotoPicker: UIViewControllerRepresentable {
    class PhotosCoordinator: NSObject, PHPickerViewControllerDelegate {
        var parent: PhotoPicker
        
        init(parent: PhotoPicker) {
            self.parent = parent
        }
        
        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            let itemProviders = results.map(\.itemProvider)
            for item in itemProviders {
                if item.canLoadObject(ofClass: UIImage.self) {
                    item.loadObject(ofClass: UIImage.self) { image, error in
                        if let error {
                            print("Error!", error.localizedDescription)
                        } else {
                            DispatchQueue.main.async {
                                if let image = image as? UIImage {
                                    self.parent.images.append(image)
                                }
                            }
                        }
                    }
                }
            }
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
    
    @Binding var images: [UIImage]
    @Environment(\.presentationMode) var presentationMode
    
    func makeUIViewController(context: Context) -> some UIViewController {
        var configuration = PHPickerConfiguration()
        configuration.filter = .images
        configuration.selectionLimit = 0
        let picker = PHPickerViewController(configuration: configuration)
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
    
    func makeCoordinator() -> PhotosCoordinator {
        PhotosCoordinator(parent: self)
    }
}

struct PhotoPicker_Previews: PreviewProvider {
    static var previews: some View {
        PhotoPicker(images: .constant([UIImage]()))
            .background(Color.yellow)
    }
}
