//
//  ContentView.swift
//  SwiftUIAnimations
//
//  Created by Ignacio Gilabert Bernal on 5/11/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 20) {
            Circle()
                .foregroundColor(.orange)
                .frame(width: 100, height: 100)
                .offset(x: self.change ? 120 : 0, y: self.change ? 300 : 0)
                .animation(.easeInOut)
            
            Button("Change") {
                self.change.toggle()
            }
            
        }
    }
}

struct CurvasAnimation: View {
    
    @State private var move = false
    
    var body: some View {
        VStack(spacing: 20){
            TitleText(title: "Animaciones con curvas")
            
            Group{
                Text("1")
                GeometryReader { gr in
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.orange)
                        .position(x: self.move ? (gr.size.width - 40) : 40, y: 40)
                        .animation(.easeIn(duration: 2))
                }
                
                Text("2")
                GeometryReader { gr in
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.orange)
                        .position(x: self.move ? (gr.size.width - 40) : 40, y: 40)
                        .animation(.linear(duration: 2))
                }
                
                Text("3")
                GeometryReader { gr in
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.orange)
                        .position(x: self.move ? (gr.size.width - 40) : 40, y: 40)
                        .animation(.easeOut(duration: 2))
                }
                
            }
            
            Button("Move") {
                self.move.toggle()
            }
        
        }
        .font(.title)
        .padding(.bottom)
    }
}

struct CurvasAnimation2: View {
    
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText(title: "Esta es otra prueba")
            SubTitleText(subtitle: "Vamos a probar con más animaciones")
            Spacer()
            HStack{
                Spacer()
                Circle()
                    .foregroundColor(.orange)
                    .frame(width: 100, height: 100)
                    .offset(x: self.change ? -250 : 0, y: self.change ? -450 : 0)
                    .animation(.easeInOut)
            }
            .padding()
            
            Button("Change") {
                self.change.toggle()
            }
            .padding(.bottom)
        }
        .font(.title)
    }
}

struct MenuAnimation: View {
    
    @State private var showButtonMenu = false
    @State private var shouldShowText = false
    @State private var shouldShowText2 = false
    @State private var shouldShowText3 = false
    @State private var shouldShowText4 = false
    @State private var shouldShowText5 = false

    
    
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .bottomTrailing) {
                VStack(spacing: 20){
                    TitleText(title: "Menu Flotante")
                    SubTitleText(subtitle: "Como les gusta a los Androides")
                    Spacer()
                }
                
                Group {
                    button1
                    button2
                    button3
                    button4
                    button5
                    button6
                    button7
                 }
                .foregroundColor(.white)
                .animation(.default)
                Group{
                NavigationLink("", destination: Text("bad.badge.plus"), isActive: self.$shouldShowText)
                NavigationLink("", destination: Text("gauge.badge.plus"), isActive: self.$shouldShowText2)
                    NavigationLink("", destination: Text("calendar.badge.plus"), isActive: self.$shouldShowText3)
                    NavigationLink("", destination: Text("calendar.badge.plus"), isActive: self.$shouldShowText4)
                    NavigationLink("", destination: Text("calendar.badge.plus"), isActive: self.$shouldShowText5)
                }
            }

        }
        

        }
    var button1: some View {
        Button(action: {
            self.showButtonMenu.toggle()
            self.shouldShowText.toggle()
        }) {
            Image(systemName: "bag.badge.plus")
                .padding(24)
                .rotationEffect(Angle.degrees(self.showButtonMenu ? 0 : -90))
        }.background(Circle().fill(Color.green).shadow(color: Color.black.opacity(0.3), radius: 10, x: 4, y: 4))
            .offset(x: 0, y: self.showButtonMenu ? -150 : 0)
            .opacity(self.showButtonMenu ? 1 : 0)
    }
    var button2: some View {
    //Boton de animacion de todo
    Button(action: {
        self.showButtonMenu.toggle()
    }) {
        Image(systemName: "plus")
            .padding(24)
            .rotationEffect(Angle.degrees(self.showButtonMenu ? 45 : 0))
    }.background(Circle().fill(Color.green).shadow(color: Color.black.opacity(0.3), radius: 10, x: 4, y: 4))
}
    var button3: some View {
        Button(action: {
            self.showButtonMenu.toggle()
            self.shouldShowText2.toggle()

        }) {
            Image(systemName: "trash")
                .padding(24)
                .rotationEffect(Angle.degrees(self.showButtonMenu ? 0 : -90))
        }.background(Circle().fill(Color.green).shadow(color: Color.black.opacity(0.3), radius: 10, x: 4, y: 4))
            .offset(x: self.showButtonMenu ? -150 : 0, y: 0)
            .opacity(self.showButtonMenu ? 1 : 0)
    }
    var button4: some View {
        Button(action: {
            self.showButtonMenu.toggle()
            self.shouldShowText3.toggle()

        }) {
            Image(systemName: "archivebox")
                .padding(24)
                .rotationEffect(Angle.degrees(self.showButtonMenu ? 0 : -90))
        }.background(Circle().fill(Color.green).shadow(color: Color.black.opacity(0.3), radius: 10, x: 4, y: 4))
            .offset(x: self.showButtonMenu ? -100 : 0, y: self.showButtonMenu ? -100 : 0)
            .opacity(self.showButtonMenu ? 1 : 0)
    }
    var button5: some View {
        Button(action: {
            self.showButtonMenu.toggle()
            self.shouldShowText4.toggle()

        }) {
            Image(systemName: "doc")
                .padding(24)
                .rotationEffect(Angle.degrees(self.showButtonMenu ? 0 : -90))
        }.background(Circle().fill(Color.green).shadow(color: Color.black.opacity(0.3), radius: 10, x: 4, y: 4))
            .offset(x: self.showButtonMenu ? -100 : 0, y: self.showButtonMenu ? -200 : 0)
            .opacity(self.showButtonMenu ? 1 : 0)
    }
    var button6: some View {
        Button(action: {
            self.showButtonMenu.toggle()
            self.shouldShowText2.toggle()

        }) {
            Image(systemName: "terminal")
                .padding(24)
                .rotationEffect(Angle.degrees(self.showButtonMenu ? 0 : -90))
        }.background(Circle().fill(Color.green).shadow(color: Color.black.opacity(0.3), radius: 10, x: 4, y: 4))
            .offset(x: self.showButtonMenu ? -200 : 0, y: self.showButtonMenu ? -100 : 0)
            .opacity(self.showButtonMenu ? 1 : 0)
    }
    var button7: some View {
        Button(action: {
            self.showButtonMenu.toggle()
        }) {
            Image(systemName: "note")
                .padding(24)
                .rotationEffect(Angle.degrees(self.showButtonMenu ? 0 : -90))
        }.background(Circle().fill(Color.green).shadow(color: Color.black.opacity(0.3), radius: 10, x: 4, y: 4))
            .offset(x: self.showButtonMenu ? -300 : 0, y: self.showButtonMenu ? -200 : 0)
            .opacity(self.showButtonMenu ? 1 : 0)
    }
}

struct GestureDrag: View {
    
    @GestureState private var menuOffset = CGSize.zero
    @State private var currentMenuY: CGFloat = 0.0
    
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText(title: "Gesture Drag")
            SubTitleText(subtitle: "Podemos mover la animacion y completar el movimiento")
            Spacer()
            
            VStack {
                Circle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                    .overlay(Image(systemName: "line.horizontal.3").foregroundColor(.white).offset(x: 0, y: -20))
            }
            .offset(x: 0, y: -50)
            
            HStack{
                Spacer()
            }
            Spacer()
        }
        .frame(height: 200)
        .background(RoundedRectangle(cornerRadius: 20).fill(Color.green))
        .offset(x: 0, y: self.currentMenuY + self.menuOffset.height)
        .gesture(
            DragGesture()
                .updating(self.$menuOffset, body: { value, menuOffset, transaction in
            menuOffset = value.translation
        })
        .onEnded({ action in
            if value.translation.height > 100 {
                self.currentMenuY = 200
            } else {
                self.currentMenuY = 0
            }
        })
    })
            
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView()
        //CurvasAnimation()
        //CurvasAnimation2()
        MenuAnimation()
        //GestureDrag()
    }
}
