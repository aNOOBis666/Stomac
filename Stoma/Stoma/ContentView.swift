//
//  ContentView.swift
//  Stoma
//
//  Created by Гость on 08.01.2021.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    @State var checking = false
    @State var showState = CGSize.zero
    @State var registration = false
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9261491895, green: 0.9263044, blue: 0.9261286855, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack {
                    

                        VStack{
                            HStack {
                                
                                Text("Вход")
                                    .font(Font.system(size: 20))
                                    .fontWeight(.bold)
                                    .padding(.leading, screen.width*0.2)
                                    .onTapGesture{
                                        if checking == false{
                                        self.registration.toggle()
                                            checking = true
                                    }
                                }
                                Spacer()
                                Text("Регистрация")
                                    .font(Font.system(size: 20))
                                    .fontWeight(.bold)
                                    .padding(.trailing, screen.height*0.07)
                                    .onTapGesture{
                                        if checking == true{
                                        self.registration.toggle()
                                            checking = false
                            }
                                    }
                                }
                            .padding(.bottom, 5.0)
                            Text("")
                                .frame(width: screen.width/2.5, height: screen.height/250)
                                .background(Color(#colorLiteral(red: 0.9986596704, green: 0.4876412153, blue: 0.002014608821, alpha: 1)))
                                .cornerRadius(70)
                                .offset(x: registration ? screen.width / -4.5 : screen.width / 5)
                                .animation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: 0))
                    }
                        
                    .frame(width: screen.width, height: screen.height/2.5,alignment: .bottom)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                    .shadow(color: Color(#colorLiteral(red: 0.7287278771, green: 0.7288518548, blue: 0.7287115455, alpha: 1)), radius: 5)
                    .edgesIgnoringSafeArea(.all)

                }
                if registration{
                entranceView().offset(x: show ? screen.width*2 : 0)
                }
                else{
                    registrationView()
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



struct entranceView: View {
    @State var phoneNumb: String = ""
    @State var checking = false
    @State var show = false
    @State var userPass: String = ""
    @State var smscode: String = ""
    var body: some View {
        if checking{
            smsreceiveView()
        } else{
            entranceformView()
        }
        
        Spacer(minLength: screen.height / 6.5 )
        ZStack {
            Text(show ? "Далее" : "Войти")
                .font(Font.system(size: 20))
                .fontWeight(.bold)
                .frame(width: screen.width*0.8, height: screen.height*0.08, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.9487964511, green: 0.9489552379, blue: 0.9487755895, alpha: 1)))
                .background(Color(#colorLiteral(red: 1, green: 0.4852788448, blue: 0, alpha: 1)))
                .cornerRadius(30)
                .offset(x: 0, y: show ? screen.height / -3.5 : screen.height / -25)
                .onTapGesture{
                    if checking == false{
                    self.show.toggle()
                    checking = true
                }
        }
        }
        
    }
}
        
        
struct smsreceiveView: View {
    @State var smsCode = ""
    @State var show = false
    var body: some View{
    VStack{
        HStack{
            Text("Код из СМС").foregroundColor(Color(#colorLiteral(red: 0.5775940418, green: 0.577694118, blue: 0.5775808692, alpha: 1))).fontWeight(.bold)
                .padding(.bottom, screen.height / 100)
            Spacer()
            
        }
        TextField("", text: $smsCode)
            .padding(.bottom, screen.height / 300)
        Text("")
            .frame(width: screen.width/1.3, height: screen.height / 700)
            .background(Color(#colorLiteral(red: 0.2835051119, green: 0.2835586667, blue: 0.2834980488, alpha: 1)))
            .cornerRadius(70)
            .offset(x: screen.width / -15)
            .padding(.bottom, screen.height / 20)
        
    }
    .padding(.leading, screen.width*0.1)
    .frame(width: screen.width, height: screen.height/3)
    .offset(x: show ? 0 : 0 , y: 0)
    
    }
}
        
struct entranceformView: View{
    @State var phoneNumb: String = ""
    @State var checking = false
    @State var show = false
    @State var userPass: String = ""
    @State var smscode: String = ""
    var body: some View{
        VStack{
            HStack {
                Text("Телефон").foregroundColor(Color(#colorLiteral(red: 0.5775940418, green: 0.577694118, blue: 0.5775808692, alpha: 1))).fontWeight(.bold)
                    .padding(.bottom, screen.height / 100)
                Spacer()
                
            }
            TextField("+7", text: $phoneNumb)
                .padding(.bottom, screen.height / 250)
            Text("")
                .frame(width: screen.width/1.3, height: screen.height / 750)
                .background(Color(#colorLiteral(red: 0.2835051119, green: 0.2835586667, blue: 0.2834980488, alpha: 1)))
                .cornerRadius(70)
                .offset(x: screen.width / -15)
                .padding(.bottom, screen.height / 20)
            
            HStack{
                Text("Пароль").foregroundColor(Color(#colorLiteral(red: 0.5775940418, green: 0.577694118, blue: 0.5775808692, alpha: 1))).fontWeight(.bold)
                    .padding(.bottom, screen.height / 100)
                Spacer()
                
            }
            TextField("*****", text: $userPass)
                .padding(.bottom, screen.height / 250)
            Text("")
                .frame(width: screen.width/1.3, height: screen.height / 700)
                .background(Color(#colorLiteral(red: 0.2835051119, green: 0.2835586667, blue: 0.2834980488, alpha: 1)))
                .cornerRadius(70)
                .offset(x: screen.width / -15)
                .padding(.bottom, screen.height / 20)
            
    }
    .padding(.leading, screen.width*0.1)
    .frame(width: screen.width, height: screen.height/3)
    .offset(x: show ? screen.width*2 : 0 , y: 0)
    }
    }

struct registrationView: View {
    @State var phoneNumb: String = ""
    @State var checking = false
    @State var show = false
    @State var userPass: String = ""
    @State var smscode: String = ""
    var body: some View {
        VStack {

            HStack {
                Text("Телефон").foregroundColor(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))).fontWeight(.bold)
                    .padding(.bottom, screen.height / 100)
                Spacer()
                
            }
            TextField("+7", text: $phoneNumb)
                .padding(.bottom, screen.height / 250)
            Text("")
                .frame(width: screen.width/1.3, height: screen.height / 750)
                .background(Color(#colorLiteral(red: 0.2835051119, green: 0.2835586667, blue: 0.2834980488, alpha: 1)))
                .cornerRadius(70)
                .offset(x: screen.width / -15)
                .padding(.bottom, screen.height / 20)
            
            HStack{
                Text("Пароль").foregroundColor(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))).fontWeight(.bold)
                    .padding(.bottom, screen.height / 100)
                Spacer()
                
            }
            TextField("*****", text: $userPass)
                .padding(.bottom, screen.height / 250)
            Text("")
                .frame(width: screen.width/1.3, height: screen.height / 700)
                .background(Color(#colorLiteral(red: 0.2835051119, green: 0.2835586667, blue: 0.2834980488, alpha: 1)))
                .cornerRadius(70)
                .offset(x: screen.width / -15)
                .padding(.bottom, screen.height / 20)
            
        }
        .padding(.leading, screen.width*0.1)
        .frame(width: screen.width, height: screen.height/3)
        .offset(x: show ? screen.width*2 : 0 , y: 0)
        
        
        
        Spacer(minLength: screen.height / 6.5)
        ZStack {
            Text("Зарегистрироваться")
                .font(Font.system(size: 20))
                .fontWeight(.bold)
                .frame(width: screen.width*0.8, height: screen.height*0.08, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.9487964511, green: 0.9489552379, blue: 0.9487755895, alpha: 1)))
                .background(Color(#colorLiteral(red: 1, green: 0.4852788448, blue: 0, alpha: 1)))
                .cornerRadius(30)
                .offset(x: 0, y: screen.height / -25)
        }
    }
    
}


