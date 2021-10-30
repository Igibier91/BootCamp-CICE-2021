//
//  CustomMainView.swift
//  AppCiceFashion
//
//  Created by Ignacio Gilabert Bernal on 29/10/21.
//

import SwiftUI

struct CustomMainView: View {
    
    //State para cambiar una variable
   @State private var dressSelected = "Dress"
   @State private var showCustomAlertView = false

    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    //MOSTRAR ALERTA
                }) {
                    HStack{
                        Text("Casual Dress").font(.headline)
                        Spacer()
                        Image(systemName: "chevron.down").font(.title3)
                    }
                    .padding()
                }
                .foregroundColor(.black)
                
                Button(action: {
                }) {
                    HStack{
                        Image(systemName: "slider.horizontal.3").padding()
                    }
                }
                .foregroundColor(.black)
                .contextMenu{
                    Text("Menu Item 1")
                    Text("Menu Item 2")
                    Text("Menu Item 3")

                }
            }
        
            HStack{
                ForEach(typeDresses, id: \.self) { item in
                    HStack{
                        CustomNavigationView(showCustomAlertView: self.$showCustomAlertView)

                        Button(action: {
                            self.dressSelected = item
                            
                            if self.showCustomAlertView{
                                CustomAlertView(title: "Custom Alert View", message: "asidfjasdifjasdjfaisdf", hideCustomAlertView: self.$showCustomAlertView)
                                
                            }
                            
                            
                        }) {
                            Text(item)
                                .font(.system(size: 8, weight: .semibold, design: .default))
                                .padding()
                        }
                        // Si el item es el seleccionado, le pones el foreground a blanco, si no a negro.
                        .foregroundColor(self.dressSelected == item ? .white : .black)
                        
                        .background(self.dressSelected == item ? Color.black : Color.clear)
                        .cornerRadius(10)
                        
                    }
                }
            }
        
            detailLazyGridScrollView
        }
    }
    
    var detailLazyGridScrollView: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(customData) { item in
                // Repite una Grid en dos columnas
                LazyVGrid(columns: Array(repeating: GridItem(), count: 2)) {
                    ForEach(item.myRows) { itemRow in
                        // Para navegar
                        NavigationLink {
                            DetailFashionView(model: itemRow)
                        } label: {
                            CardCarrouselView(model: itemRow)
                        }
                        // Para que respete el diseño por defecto
                        .buttonStyle(PlainButtonStyle())
                        
                    }
                }
            }
        }
    }
    
}

struct CardCarrouselView: View {
    
    var model: Row
    
    var body: some View {
        VStack(spacing: 20) {
            Image(model.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            HStack{
                VStack(alignment: .leading, spacing: 10) {
                    Text(model.name).font(.headline)
                    Text(model.price).fontWeight(.black)
                }
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image("option")
                        .renderingMode(.original)
                        .foregroundColor(.black)
                    
                }
                .padding(.trailing, 10)
            }
            
        }
    }
    
}


struct CustomMainView_Previews: PreviewProvider {
    static var previews: some View {
        CustomMainView()
    }
}


 // MARK: - Model Data

// Para usarlo con variables ID el protocolo Identifiable
struct CustomType: Identifiable{
    var id: Int
    var myRows: [Row]
}

struct Row: Identifiable {
    var id: Int
    var name: String
    var image: String
    var price: String
}

var customSize = ["S", "M", "L", "XL"]
var typeDresses = ["Dress", "Pants", "Blazers", "Jackets"]
var customData = [CustomType(id: 0, myRows: [Row(id: 0, name: "Fit and Flare", image: "p1", price: "€199"),
                                             Row(id: 1, name: "Fit and Summer", image: "p21", price: "€299"),
                                             Row(id: 2, name: "Empire and Flare", image: "p21", price: "€299"),
                                             Row(id: 3, name: "Fit and Vibes", image: "p22", price: "€399"),
                                             Row(id: 4, name: "Empire and Flare", image: "p1", price: "€499"),
                                             Row(id: 5, name: "Fit and Empire", image: "p12", price: "€599")])]
