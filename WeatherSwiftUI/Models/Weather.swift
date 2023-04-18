//
// Ios Project
//  Pruthvi - A00262875
//  Sakshi - A00262877



import Foundation
import SwiftUI

struct Weather: Codable, Identifiable {
    
    let id: Int
    let main: String
    let description: String
    let icon: String
}
