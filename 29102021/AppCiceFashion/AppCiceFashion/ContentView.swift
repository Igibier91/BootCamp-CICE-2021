//
//  ContentView.swift
//  AppCiceFashion
//
//  Created by Ignacio Gilabert Bernal on 29/10/21.
//

import SwiftUI


struct ContentView: View {
    // Meter encima del body SIEMPRE
    @State private var showCustomAlertView = false
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    CustomNavigationView(showCustomAlertView: self.$showCustomAlertView)
                    CustomMainView()
                    // Se mete en la VStack, no en el NavigationView
                }
                    // Si el custom alert view es true -> 3, si false -> 0
                .blur(radius: self.showCustomAlertView ? 3 : 0)
                
                
                
                if self.showCustomAlertView{
                    CustomAlertView(title: "Custom Alert View", message: "asidfjasdifjasdjfaisdf", hideCustomAlertView: self.$showCustomAlertView)
                    
                }
            }.navigationBarHidden(true)
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
