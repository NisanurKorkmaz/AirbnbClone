//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Nisanur Korkmaz on 12/12/2023.
//

import SwiftUI

struct ListingItemView: View {
    let listing : Listing
    
    var body: some View {
        VStack(spacing : 8){
            //images
            ListingImageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            
            //listings details
            HStack(alignment : .top){
                //datails
                VStack(alignment : .leading){
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing : 5){
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Text("night")
                            .foregroundStyle(.black)
                    }
                }
                Spacer()
                //rating
                let formattedRating = String(format: "%.2f", listing.rating)
                HStack(spacing : 2){
                    Image(systemName: "star.fill")
                        .foregroundStyle(.black)
                    Text("\(formattedRating)")
                        .foregroundStyle(.black)
                }
            }
            .font(.footnote)
            
        }
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[1])
}
