//
// Ios Project
//  Pruthvi - A00262875
//  Sakshi - A00262877


import SwiftUI

struct WeatherDailyForecastList: View {
    
    var temperatureData: TemperatureData
    var weatherForecastList: [WeatherForecastDetail]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            ForEach(weatherForecastList) { weatherForecast in
                WeatherDailyForecastDetailView(temperatureData: self.temperatureData,
                                               weatherDailyForecast: weatherForecast)
            }
        }
    }
}
