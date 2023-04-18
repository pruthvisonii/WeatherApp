//
// Ios Project
//  Pruthvi - A00262875
//  Sakshi - A00262877



import SwiftUI

struct WeatherCityView: View {
    
    @ObservedObject var temperatureData: TemperatureData
    var allWeather: AllWeather
    
    var weatherDetail: WeatherDetail {
        return allWeather.weatherDetail
    }
    
    var weatherDailyForecast: WeatherForecast {
        return allWeather.weatherDailyForecast
    }
    
    var weatherHourlyForecast: WeatherForecast {
        return allWeather.weatherHourlyForecast
    }
    
    var body: some View {
        List {
            WeatherDetailTitleView(temperatureData: temperatureData,
                                   weatherDetail: weatherDetail)
            WeatherHourlyForecastList(temperatureData: temperatureData,
                                      weatherHourlyForecastList: Array(weatherHourlyForecast.list.prefix(24)))
            WeatherDailyForecastList(temperatureData: temperatureData,
                                     weatherForecastList: weatherDailyForecast.list)
            WeatherDescription(description: weatherDetail.weather[0].description,
                               currentTemp: temperatureData.temperature(weatherDetail.main.temperature),
                               maxTemp: temperatureData.temperature(weatherDetail.main.tempMax))
            WeatherDetailStack(weatherDetail: weatherDetail).padding()
        }
    }
}
