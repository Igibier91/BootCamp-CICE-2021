//
//  Components.swift
//  SwiftUIAnimations
//
//  Created by Ignacio Gilabert Bernal on 5/11/21.
//

import SwiftUI

struct TitleText: View {
    var title = ""
    var body: some View {
        Text(title).font(.largeTitle)
    }
}

struct SubTitleText: View {
    var subtitle = ""
    var body: some View {
        Text(subtitle).font(.title).foregroundColor(.gray)
    }
}

struct Components_Previews: PreviewProvider {
    static var previews: some View {
        TitleText()
    }
}
