//
//  CustomImage.swift
//  ImageGallery
//
//  Created by BMCC Lab Guest on 3/17/26.
//

import SwiftUI

struct CustomImage: View {
    //create variables that will be used for our custom image view
    var imageName: String
    var borderSize: CGFloat
    var borderColor: Color
    var shadowRadius: CGFloat
    
    
    var body: some View {
        Image(imageName)
        // resizable lets you change the dimensions of an image
            .resizable()
            .scaledToFit()
            .aspectRatio(contentMode: .fit)
            .shadow(radius: shadowRadius)
            .padding()
      
    }
}

#Preview {
    CustomImage(imageName:"beach.png", borderSize: 0, borderColor: .blue, shadowRadius: 20)
    CustomImage(imageName:"forest", borderSize: 0, borderColor: .green, shadowRadius: 20)
    CustomImage(imageName:"strawberryfield", borderSize: 0, borderColor: .pink, shadowRadius: 20)
}
