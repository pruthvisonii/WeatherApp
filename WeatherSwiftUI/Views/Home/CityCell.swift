//
// Ios Project
//  Pruthvi - A00262875
//  Sakshi - A00262877



import SwiftUI

struct CityCell: View {
    
    @ObservedObject var temperatureData: TemperatureData
    
    var allWeather: AllWeather
    var isCurrentLocation: Bool
    
    var body: some View {
        HStack {
            HStack {
                Text(allWeather.weatherDetail.name)
                    .font(.title)
                if isCurrentLocation {
                    Image(systemName: "location.fill")
                }
            }
            
            Spacer()
            
            Text("\(temperatureData.temperature(allWeather.weatherDetail.main.temperature))°")
                .font(.largeTitle)
        }
    }
}
