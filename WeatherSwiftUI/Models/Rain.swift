//
// Ios Project
//  Pruthvi - A00262875
//  Sakshi - A00262877


import Foundation

class Rain: Codable {
    
    let probability: Float
    
    enum CodingKeys: String, CodingKey {
        case probability = "3h"
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.probability = try container.decodeIfPresent(Float.self, forKey: .probability) ?? 0.0
    }
}
