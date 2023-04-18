//
// Ios Project
//  Pruthvi - A00262875
//  Sakshi - A00262877


import Foundation
import SwiftUI

struct WeatherForecast: Codable, Identifiable {
    
    let id = UUID()
    
    var list: [WeatherForecastDetail]
}
