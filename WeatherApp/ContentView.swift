//  ContentView.swift
//  WeatherApp
//
//  Created by mac on 17/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            BackGroundView(topColor: .blue, boottomColor: Color("LightBlue"))
            
            VStack{
                CityTextView(cityName: "Cupertino, CA")
                MainWeatherStatusView(ImageName: "cloud.sun.fill", temperature: 76)
                
          
                
                HStack(spacing: 20 ){
                    WeatherDayView(dayofweek: "TUE", imageName: "cloud.sun.fill", temperature: 75)
                    
                    WeatherDayView(dayofweek: "WED", imageName: "sun.max.fill", temperature: 88)
                    
                    WeatherDayView(dayofweek: "THUR", imageName: "wind.snow", temperature: 55)
                    
                    WeatherDayView(dayofweek: "FRI", imageName: "sunset.fill", temperature: 60)
                    
                    WeatherDayView(dayofweek: "SAT", imageName: "snow", temperature: 25)
                    
                    
                }
              
               
                
                Spacer()
                
                Button{
                    print("tapped")
                }label: {
                    Text("Change Day Time").textCase(.none)
                        .frame(width: 200, height: 50)
                        .background(.white)
                        .font(.system(size: 16,weight: .bold,design: .default))
                        .cornerRadius(10)
                    
                }
                Spacer()
            }
          
        }
       
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayofweek : String
    var  imageName : String
    var temperature : Int
    
    
    var body: some View {
        HStack{
            VStack{
                Text(dayofweek)
                    .font(.system(size: 16,weight: .medium,design: .default))
                    .foregroundColor(.white )
                
                
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40,height: 40)
                
                Text("\(temperature)°")
                    .font(.system(size: 28,weight: .medium,design: .default))
                    .foregroundColor(.white)
            }
            
            
        }
    }
}

struct BackGroundView: View {
    var topColor : Color
    var boottomColor : Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor,boottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView : View{
    
    var cityName : String
    
    var body : some View{
        Text(cityName)
            .font(.system(size: 32,weight: .medium,design: .default))
            .foregroundColor(.white)
            .padding()
    }
}
struct MainWeatherStatusView : View {
    
    var ImageName : String
    var temperature : Int
    
   var body: some View {
       VStack(spacing: 10){
           Image(systemName: ImageName)
               .renderingMode(.original)
               .resizable()
               .aspectRatio(contentMode: .fit)
               .frame(width: 180,height: 180)
           
           Text("\(temperature)°")
               .font(.system(size: 52,weight: .medium,design: .default))
               .foregroundColor(.white)
       
           }
       .padding(.bottom, 40)
      
   }
}
