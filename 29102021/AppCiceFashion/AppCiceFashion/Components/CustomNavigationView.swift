//
//  CustomNavigationView.swift
//  AppCiceFashion
//
//  Created by Ignacio Gilabert Bernal on 29/10/21.
//

import SwiftUI


struct CustomNavigationView: View {
    
    @State private var showAlert = false
    @State private var showAlert2 = false
    @Binding var showCustomAlertView : Bool


    
    var body: some View {
        ZStack{

            Text("Seasons").font(.system(size: 20))

            HStack(spacing: 8) {
                Button(action: {
                    // ACTION
                    self.showAlert = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                    
                }
                
                // $ usar un objeto bindeable
                .alert(isPresented: self.$showAlert) {
                    Alert(title: Text("Hola!"),
                          message: Text("Aquí tenemos una alerta"),
                          primaryButton: .default(Text("Ok"),
                                                  action: {
                        //
                    }), secondaryButton: .cancel(Text("cancel"), action: {
                        //
                    }))
                }
                Spacer()
                
                Button(action: {
                    // ACTION
                    self.showAlert2.toggle()
                }) {
                    Image(systemName: "magnifyingglass")
                    
                }
                .alert("Otra Alerta", isPresented: self.$showAlert2) {
                    Button("OK"){}
                    Button("Cancel"){}
                }
                
                Button(action: {
                    // ACTION
                }) {
                    Image(systemName: "alarm")                }
                
                Button(action: {
                    // ACTION
                    self.showCustomAlertView.toggle()
                }) {
                    Image(systemName: "cart")                }
                
            }
            .font(.callout)
            .foregroundColor(.black)
            .padding(.horizontal, 8)

        //    if self.showCustomAlertView{
          //      CustomAlertView(title: "Custom Alert View", message: "asidfjasdifjasdjfaisdf", hideCustomAlertView: self.$showCustomAlertView)}
        
        
        }
        .background(Color.white)
    }
    
}


//struct CustomNavigationView_Previews: PreviewProvider {
  //  static var previews: some View {
       // CustomNavigationView()
    //    CustomAlertView(title: <#T##String#>, message: <#T##String#>, hideCustomAlertView: <#T##Binding<Bool>#>)
    
    //}
//}
