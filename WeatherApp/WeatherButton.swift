//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by mac on 22/01/2025.
//

import SwiftUI 

struct WeatherButton : View {
    var title : String
    var textColor : Color
    var backgroundColor : Color
    var body: some View {
        Text(title)
            .textCase(.none)
            .frame(width: 200, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 16,weight: .bold,design: .default))
            .cornerRadius(10)
    }
}

