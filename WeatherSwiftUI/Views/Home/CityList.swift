//
// Ios Project
//  Pruthvi - A00262875
//  Sakshi - A00262877



import MapKit
import SwiftUI

struct CityList: View {
    
    @ObservedObject var temperatureData: TemperatureData
    @ObservedObject var cityData: CityData
    
    @State var showNewCityModal = false
    
    var degrees = ["°C", "°F"]
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(0 ..< cityData.allWeathers.count) { index in
                        NavigationLink(destination: PageView(temperatureData: self.temperatureData,
                                                             allWeathers: self.cityData.allWeathers,
                                                             currentPage: index)) {
                                CityCell(temperatureData: self.temperatureData,
                                         allWeather: self.cityData.allWeathers[index],
                                         isCurrentLocation: CLLocationManager.locationServicesEnabled() && index == 0)
                        }
                    }
                    
                    HStack {
                        Picker("Degree choice", selection: $temperatureData.temperatureUnit) {
                            ForEach(0 ..< degrees.count) { index in
                                Text(self.degrees[index])
                                    .tag(index)
                            }
                        }.pickerStyle(SegmentedPickerStyle())
                        
                        Spacer()
                        
                        Button(action: {
                            self.showNewCityModal = true
                        }) {
                            Image(systemName: "plus.circle")
                                .foregroundColor(.primary)
                        }
                    }
                }
                .navigationBarTitle(Text("Cities"))
            }
        }
        .sheet(isPresented: $showNewCityModal, content: { NewCityModal(cityData: self.cityData) })
    }
}
