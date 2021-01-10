//
//  mainView.swift
//  Stoma
//
//  Created by Гость on 10.01.2021.
//

import SwiftUI

struct mainView: View {
    var body: some View {
        Circle()
            .trim(from: 0.2, to: 1)
            .stroke(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.464669168, blue: 0, alpha: 1)), Color(#colorLiteral(red: 0.9794301391, green: 0.6767123938, blue: 0.3523305058, alpha: 1))]), startPoint: .topTrailing, endPoint: .bottomLeading), style: StrokeStyle(lineWidth: 10))
            .rotationEffect(Angle(degrees: 90))
            .rotation3DEffect(
                Angle(degrees: 180),
                axis: (x: 1.0, y: 0.0, z: 0.0))
            .frame(width: screen.width/9*5, height: screen.height/16*5)
            
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}
