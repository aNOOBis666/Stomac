//
//  mainWindow.swift
//  Stoma
//
//  Created by Гость on 12.01.2021.
//

import SwiftUI

struct mainWindow: View {
    var name: String = "Дима"
    var body: some View {
        

        VStack {
            VStack {
                    HStack {
                        Image("pngegg")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: screen.width / 15, height: screen.height / 25)
                        Spacer()
                        Image("successMan")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 75, height: 75, alignment: .center)
                            .cornerRadius(50)
                        
                        
                    }.padding(.bottom, 20)
                    HStack {
                        Text("Привет, \(name)!")
                        .fontWeight(.bold)
                        .font(.system(size: screen.height/30))
                        Spacer()
                    }

                }.edgesIgnoringSafeArea(.all)
                .padding(.horizontal, screen.width/10)
            .padding(.top, screen.height / -6)
   
            mainCardView()
            
            diagnosisCardView()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: -11){
                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                        visitCardView()
                    }.padding(.leading, screen.width/14)
                }
            }.shadow(color: Color.black.opacity(0.1), radius: 10)
            
            balanceCardView()
            
        }
    }
}
    

struct mainWindow_Previews: PreviewProvider {
    static var previews: some View {
        mainWindow()
    }
}

struct diagnosisCardView: View {
    var diagnosis: String = "Пришеечный кариес"
    var cost: String = "6 500 ₽"
    var body: some View{
        VStack {
            ZStack {
                VStack{
                    HStack{
                        Image("brokenTooth")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                        Text("Диагноз")
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .padding(.trailing, 175)
                        ZStack{
                            Circle()
                                .foregroundColor(Color(#colorLiteral(red: 0.983199656, green: 0.6885803342, blue: 0.2488806844, alpha: 1)))
                                .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("i")
                                .foregroundColor(Color(#colorLiteral(red: 0.9999058843, green: 1, blue: 0.9998812079, alpha: 1)))
                                .fontWeight(.bold)
                        }
                    }
                    Text("\(diagnosis)")
                        .fontWeight(.semibold)
                        .font(.system(size: screen.height / 40))
                        .padding(.trailing, 83)
                    HStack{
                        Text("\(cost)")
                            .foregroundColor(Color(#colorLiteral(red: 0.983199656, green: 0.6885803342, blue: 0.2488806844, alpha: 1)))
                            .fontWeight(.semibold)
                        Text("План Лечения    >")
                            .foregroundColor(Color(#colorLiteral(red: 0.9571954608, green: 0.4740248322, blue: 0.126337409, alpha: 1)))
                            .fontWeight(.bold)
                            .padding(.leading, 90)
                    }.padding(.top, 7)
                }
            }.frame(width: 350, height: 130, alignment: .center)
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(25)
            .shadow(color: Color.black.opacity(0.1), radius: 10)
        }
    }
}


struct mainCardView: View {
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    HStack {
                        ZStack {
                            VStack {
                                Image("brokenTooth")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50, height: 50)
                                Text("3 шт")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                            }
                            
                            Circle()
                                .stroke(Color(#colorLiteral(red: 0.9744232297, green: 0.7911961079, blue: 0.5572342277, alpha: 1)).opacity(0.7), style: StrokeStyle(lineWidth: screen.width / 200))
                                .frame(width: 100, height: 100)
                        }.padding(.horizontal, 25)
                        
                        ringView(color1: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), color2: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), width: 100, height: 100, percent: 25)
                            .padding(.horizontal, 35)
                    }
                    HStack {
                        Text("Больных зубов")
                            .fontWeight(/*@START_MENU_TOKEN@*/.light/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.white)
                            .padding(.horizontal, 15)
                        Text("Прогресс лечения")
                            .fontWeight(/*@START_MENU_TOKEN@*/.light/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.white)
                            .padding(.horizontal, 15)
                    }.padding(.top, 4)
                    
                }
            }.frame(width: 350, height: 175, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9605619311, green: 0.627430141, blue: 0.1108928397, alpha: 1)), Color(#colorLiteral(red: 0.9270679355, green: 0.4195291996, blue: 0.141295433, alpha: 1))]), startPoint: .top, endPoint: .bottom) )
            .cornerRadius(25)
            .padding(.top, screen.height/50)
            .shadow(color: Color.black.opacity(0.2), radius: 10)
        }
    }
}

struct balanceCardView: View{
    var body: some View{
        VStack{
            
        }
    }
}

struct visitCardView: View {
    var body: some View{
        VStack{
            ZStack{
                VStack {
                    HStack{
                        Image("calendar")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 25)
                        Text("Ближайший визит")
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))

                    }.frame(maxWidth: .infinity, alignment: .leading)
                    VStack(alignment: .leading){
                    Text("23.10.2020 в 15:30")
                        .fontWeight(.semibold)
                        .font(.system(size: screen.height / 40))
                        .padding(.leading, -16.0)
                        .padding(.top, -6)
                        .padding(.bottom, 10)

                    Text("Детали визита    >")
                        .foregroundColor(Color(#colorLiteral(red: 0.9571954608, green: 0.4740248322, blue: 0.126337409, alpha: 1)))
                        .fontWeight(.bold)
                        .padding(.leading, -15)
                        .frame(maxWidth: .infinity, alignment: .leading)

                    }.padding(.leading, 25)
                }
            }.frame(width: 300, height: 130, alignment: .leading)
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(25)
        }
    }
}
