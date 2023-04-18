//
// Ios Project
//  Pruthvi - A00262875
//  Sakshi - A00262877


import SwiftUI
import UIKit
import Combine

final class ImageData: ObservableObject {
    var cancellable: AnyCancellable?
    
    let icon: String
    
    @Published var image: UIImage? = nil
    
    init(icon: String) {
        self.icon = icon
    }
    
    func loadImage() {
        cancellable = ImageService.shared.fetchImage(icon: icon)
            .receive(on: DispatchQueue.main)
            .assign(to: \ImageData.image, on: self)
    }
    
    deinit {
        cancellable?.cancel()
    }
}
