//
//  ContentView.swift
//  Stoma
//
//  Created by Гость on 08.01.2021.
//

import SwiftUI

struct ContentView: View {
    @State var showProfile = false
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9261491895, green: 0.9263044, blue: 0.9261286855, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                    
                        /*
                        Text("Logo")
                                .frame(width: screen.width, height: screen.height/2.2)
                                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .cornerRadius(45)
                            .edgesIgnoringSafeArea(.top)
                */
                
                VStack {
                    
                    ZStack {
                        VStack {
                            HStack {
                                
                                Text("Вход")
                                    .font(Font.system(size: 20))
                                    .fontWeight(.bold)
                                    .padding(.leading, screen.width*0.2)
                                
                                
                                
                                Spacer()
                                Text("Регистрация")
                                    .font(Font.system(size: 20))
                                    .fontWeight(.bold)
                                    .padding(.trailing, screen.height*0.07)
                                
                                }
                            .padding(.bottom, 5.0)
                            Text("")
                                .frame(width: screen.width/3, height: screen.height/150)
                                .background(Color(#colorLiteral(red: 0.9986596704, green: 0.4876412153, blue: 0.002014608821, alpha: 1)))
                                .cornerRadius(70)

                        }
                        
                        
                    }
                    .frame(width: screen.width, height: screen.height/2.5,alignment: .bottom)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                    .shadow(color: Color(#colorLiteral(red: 0.7287278771, green: 0.7288518548, blue: 0.7287115455, alpha: 1)), radius: 5)
                    .edgesIgnoringSafeArea(.all)

                }
                
                
                Spacer()
                ZStack {
                    Text("Войти")
                        .font(Font.system(size: 20))
                        .fontWeight(.bold)
                        .frame(width: screen.width*0.8, height: screen.height*0.08, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.9487964511, green: 0.9489552379, blue: 0.9487755895, alpha: 1)))
                        .background(Color(#colorLiteral(red: 1, green: 0.4852788448, blue: 0, alpha: 1)))
                        .cornerRadius(30)
                        .padding(.bottom, 50)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let screen = UIScreen.main.bounds

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}


