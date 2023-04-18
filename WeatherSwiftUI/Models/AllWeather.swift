//
// Ios Project
//  Pruthvi - A00262875
//  Sakshi - A00262877



import Foundation

struct AllWeather: Identifiable {
    
    let id = UUID()
    
    let weatherDetail: WeatherDetail
    let weatherHourlyForecast: WeatherForecast
    let weatherDailyForecast: WeatherForecast
}
