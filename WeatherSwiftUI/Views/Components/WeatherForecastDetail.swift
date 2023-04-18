//
// Ios Project
//  Pruthvi - A00262875
//  Sakshi - A00262877

import SwiftUI

struct WeatherForecastDetailView: View {
    var weatherForecast: WeatherForecastDetail
    
    var body: some View {
        HStack {
            Text("\(self.weatherForecast.dt_txt)")
            
            Spacer()
            
            Image(systemName: "minus.circle")
            
            Spacer()
            
            HStack {
                Text("\(Int(self.weatherForecast.main.temp_max / 10))")
                Text("\(Int(self.weatherForecast.main.temp_min / 10))")
            }
        }
    }
}

#if DEBUG
struct WeatherForecastDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherForecastDetailView(weatherForecast: weatherForecastSample)
    }
}
#endif
