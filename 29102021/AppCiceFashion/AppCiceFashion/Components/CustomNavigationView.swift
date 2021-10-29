//
//  CustomNavigationView.swift
//  AppCiceFashion
//
//  Created by Ignacio Gilabert Bernal on 29/10/21.
//

import SwiftUI

struct CustomNavigationView: View {
    var body: some View {
        ZStack{

            Text("Seasons").font(.system(size: 20))

            HStack(spacing: 8) {
                Button(action: {
                    // ACTION
                }) {
                    Image(systemName: "slider.horizontal.3")                }
                
                Spacer()
                
                Button(action: {
                    // ACTION
                }) {
                    Image(systemName: "magnifyingglass")                }
                
                Button(action: {
                    // ACTION
                }) {
                    Image(systemName: "alarm")                }
                
                Button(action: {
                    // ACTION
                }) {
                    Image(systemName: "cart")                }
                
            }
            .font(.callout)
            .foregroundColor(.black)
        }
        .background(Color.white)
        .padding(.horizontal, 8)
    }
}

struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView()
    }
}
