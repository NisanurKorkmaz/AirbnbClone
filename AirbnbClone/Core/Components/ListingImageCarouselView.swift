//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by Nisanur Korkmaz on 12/12/2023.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = ["image1", "image2", "image3", "image4"]
    
    var body: some View {
        ScrollView{
            TabView{
                ForEach(images, id: \.self){ image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
        }
    }
}


#Preview {
    ListingImageCarouselView()
}
