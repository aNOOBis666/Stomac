//
//  mainView.swift
//  Stoma
//
//  Created by Гость on 10.01.2021.
//

import SwiftUI

struct ringView: View {
    var color1 = #colorLiteral(red: 1, green: 0.464669168, blue: 0, alpha: 1)
    var color2 = #colorLiteral(red: 0.9794301391, green: 0.6767123938, blue: 0.3523305058, alpha: 1)
    var width: CGFloat = 78
    var height: CGFloat = 78
    var percent: CGFloat = 78
    var body: some View {
        let multiplier = width / 60
        let progress = 1 - (percent / 100)
        return ZStack {
            Circle()
                .stroke(Color(#colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)).opacity(0.5), style: StrokeStyle(lineWidth: 6 * multiplier))
                .frame(width: width, height: height)
        
        Circle()
            .trim(from: progress, to: 1)
            .stroke(LinearGradient(gradient: Gradient(colors: [Color(color1), Color(color2)]), startPoint: .topTrailing, endPoint: .bottomLeading), style: StrokeStyle(lineWidth: 6 * multiplier))
            .rotationEffect(Angle(degrees: 90))
            .rotation3DEffect(
                Angle(degrees: 180),
                axis: (x: 1.0, y: 0.0, z: 0.0))
            .frame(width: width, height: height)
            
        Text("\(Int(percent))%")
            .font(.system(size: 20 * multiplier))
            .fontWeight(.bold)
            .foregroundColor(Color.white)
        }
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        ringView()
    }
}
