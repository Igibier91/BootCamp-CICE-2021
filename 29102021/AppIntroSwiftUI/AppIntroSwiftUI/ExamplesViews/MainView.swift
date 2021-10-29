//
//  MainView.swift
//  AppIntroSwiftUI
//
//  Created by Ignacio Gilabert Bernal on 29/10/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(spacing: 10){
            HeaderComponents()
            
            Button(action: {
                // Aquí se captura el action del boton
            }) {
                Text("Botón con sombra")
            }
            .padding()
            .font(.title)
            .foregroundColor(.black)
            .background(Color.yellow)
            .cornerRadius(10)
            .shadow(radius: 10)
        }
        
    }
}

struct RefactoringView: View {
    var body: some View {
        VStack(spacing: 20){
            HeaderComponents()
            Image(systemName: "hand.thumbsup.fill").font(.system(size:50))
            
            Image("captura1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal)
                .shadow(color: .black,
                        radius: 20,
                        x: 5,
                        y: 5)
                .overlay(
                    Text("Hola Chicos")
                        .foregroundColor(.red)
                        .font(.title)
                        .fontWeight(.bold)
                )
        }
    }
}

struct Shapes: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderComponents()
            Text("Se puede meter shapes para decorar vistas")
                .foregroundColor(.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.blue)).padding()
            
            Text("Se puede ajustar el fondo pero No con un shape(poligono)")
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(20)
                .shadow(radius: 10)
            
        }
    }
}

struct VerticalStackView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 20) {
                HeaderComponents()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("vStack dentro de otra vStack")
                    Divider()
                    Text("Esta puede tener subvistas")
                    Divider()
                    Text("Hasta un maximo de 10")
                    Image(systemName: "arrow.left")
                    
                }
                .font(.title2)
                .padding()
                .foregroundColor(.white)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.blue)
                )
                .padding()
                
                
                VStack(alignment: .trailing, spacing: 10) {
                    Text("vStack dentro de otra vStack")
                    Divider()
                    Text("Esta puede tener subvistas")
                    Divider()
                    Text("Hasta un maximo de 10")
                    Image(systemName: "arrow.right")
                }
                .font(.title2)
                .padding()
                .foregroundColor(.white)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.blue))
            }
            .padding()
            
        }
        
        
    }
}

struct HorizontalStackView: View {
    var body: some View{
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                HeaderComponents()
                
                HStack(spacing: 20) {
                    Text("Leading")
                    Text("Middle")
                    Text("Trailing")
                }
                .padding()
                .border(Color.orange)
                
                HStack{
                    Image(systemName: "1.circle").foregroundColor(.orange)
                    Image(systemName: "2.circle").foregroundColor(.blue)
                    Image(systemName: "3.circle").foregroundColor(.red)

                    
                }
                .padding()
                    .font(.title)
                
                HStack{
                    ScrollView(.horizontal, showsIndicators: true){
                        HStack(spacing: 100) {
                            Button(action: {}){
                                Image(systemName: "a.circle.fill").foregroundColor(.red)
                                
                            }
                           
                            Image(systemName: "b.circle.fill").foregroundColor(.red)
                            Image(systemName: "c.circle.fill").foregroundColor(.red)
                            Image(systemName: "d.circle.fill").foregroundColor(.red)
                            Image(systemName: "e.circle.fill").foregroundColor(.red)
                        }
                        .padding(.horizontal, 20)
                    }
                }
                .frame(maxWidth: .infinity)
                .font(.largeTitle)
                .padding(.vertical, 20)
                .background(Color.yellow)
            }
        }
    }
}

struct AligmentHStackView: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderComponents()
            
            HStack {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Center")
                Spacer()
                Text("Trailing")
                    .padding(.trailing)
            }
            .border(Color.orange)
            
            HStack(alignment: .top) {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Center")
                Spacer()
                Text("Trailing")
                    .padding(.trailing)
            }
            .border(Color.orange)

            HStack(alignment: .bottom) {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Center")
                Spacer()
                Text("Trailing")
                    .padding(.trailing)
            }
            .border(Color.orange)
            
        }
    }
}

struct HSTackPriority: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            HeaderComponents()
            
            Text(".layoutPriority(1) asigna hacia donde va el equilibrio de la vista")
                .font(.largeTitle)
                .padding(.horizontal)
                .background(Color.yellow)
            
            textViewAux
            
            HStack{
                Text("SwiftUI")
                    .font(.title)
                    .lineLimit(1)
                Image("user1")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                Text("Equilibrio de la vista")
                    .font(.title2)
                    .layoutPriority(1)
            }
            .padding(.horizontal)
        
            HStack{
                Text("SwiftUI")
                    .font(.title)
                    .layoutPriority(1)

                Image("user1")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                Text("Equilibrio de la vista")
                    .font(.title2)
                    .lineLimit(1)
            }
            .padding(.horizontal)
       
        }
        .padding(.vertical)
    }
    
    var textViewAux: some View {
        Text(".layoutPriority(1) asigna hacia donde va el equilibrio de la vista")
            .font(.largeTitle)
            .padding(.horizontal)
            .background(Color.yellow)
    }
    
    
}

struct ZStackView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0){
                Spacer()
                HeaderComponents()
                Spacer()

            }
            
            Text("esta es una ZSTack")
        }
        .frame(maxWidth: .infinity)
        .background(Color.gray)
        .ignoresSafeArea()
    }
}

struct AlignmentZSTackView: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderComponents()
            
            ZStack(alignment: .bottomLeading) {
                Image("captura1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .foregroundColor(Color.white.opacity(0.6))
                    .frame(maxWidth: .infinity, maxHeight: 80 * 0.8)
                
                VStack(alignment: .leading) {
                    Button(action: {}) {
                        Image(systemName: "square.and.arrow.up")
                            .font(.title)
                            .foregroundColor(.red)
                    }
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                    
                    Text("Nacho")
                        .font(.title)
                        .padding(8)
                }
                .padding(.leading, 20)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        //MainView()
        //RefactoringView()
        //Shapes()
        //VerticalStackView()
        //HorizontalStackView()
        //AligmentHStackView()
        //AligmentHStackView().previewDevice("iPhone 8")
        // AligmentHStackView().preferredColorScheme(.dark)
        //HSTackPriority()
        //ZStackView()
        AlignmentZSTackView()
    }
}
