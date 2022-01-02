//
//  OnboardingView.swift
//  AppTmdbCice
//
//  Created by Ignacio Gilabert Bernal on 26/11/21.
//

import SwiftUI

var totalPages = 3

struct OnboardingView: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        ZStack{
            if currentPage == 1 {
                ScreenView(image: "lottie1",
                           title: "Paso1",
                           detail: "Bienvenidos a la App de películas de TMDB",
                           bgColor: Color.white).transition(.scale)
            }
            if currentPage == 2 {
                
            }
            if currentPage == 3 {
                
            }
        
        }
    }
}

struct ScreenView: View {
    
    var image: String
    var title: String
    var detail: String
    var bgColor: Color
    
    @AppStorage("currentPage") var currentPage = 1

    var body: some View {
        VStack(spacing: 20) {
            HStack{
                // Se muestra si solo es la primera página
                if currentPage == 1 {
                    Text("Bienvenidos a AppTmdbCice")
                        .font(.title)
                        .fontWeight(.semibold)
                        .kerning(1.4)
                } else {
                    Button(action: {
                        withAnimation(.easeInOut){
                            currentPage -= 1
                        }
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                            .padding(.vertical, 30)
                            .padding(.horizontal)
                            .background(Color.black.opacity(0.2))
                            .clipShape(Circle())
                        
                    }

                }
                    Spacer()
            
                Button(action: {
                    withAnimation(.easeInOut){
                        currentPage = 4
                    }
                }) {
                    Text("Skip")
                        .fontWeight(.semibold)
                        .kerning(1.4)
                    
                    
                }
            }
            .foregroundColor(.black)
            .padding()
            
            Spacer()
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
            Text(detail)
                .fontWeight(.semibold)
                .kerning(1.4)
                .multilineTextAlignment(.center)
            
            Spacer(minLength: 120)
        }
        .background(bgColor.ignoresSafeArea())
    }
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
