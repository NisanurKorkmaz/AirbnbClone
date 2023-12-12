//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Nisanur Korkmaz on 12/12/2023.
//

import SwiftUI

struct ListingItemView: View {
    var body: some View {
        VStack(spacing : 8){
            //images
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            
            //listings details
            HStack(alignment : .top){
                //datails
                VStack(alignment : .leading){
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing : 5){
                        Text("$567")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Text("night")
                            .foregroundStyle(.black)
                    }
                }
                Spacer()
                //rating
                HStack(spacing : 2){
                    Image(systemName: "star.fill")
                        .foregroundStyle(.black)
                    Text("4.86")
                        .foregroundStyle(.black)
                }
            }
            .font(.footnote)
            
        }
    }
}

#Preview {
    ListingItemView()
}
