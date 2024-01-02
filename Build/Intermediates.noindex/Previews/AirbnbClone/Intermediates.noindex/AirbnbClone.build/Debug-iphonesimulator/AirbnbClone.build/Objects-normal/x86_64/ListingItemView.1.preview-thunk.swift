@_private(sourceFile: "ListingItemView.swift") import AirbnbClone
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ListingItemView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/Listings/View/ListingItemView.swift", line: 14)
        VStack(spacing : __designTimeInteger("#5158.[1].[1].property.[0].[0].arg[0].value", fallback: 8)){
            //images
            ListingImageCarouselView(listing: listing)
                .frame(height: __designTimeInteger("#5158.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 320))
                .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#5158.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 10)))
            
            
            //listings details
            HStack(alignment : .top){
                //datails
                VStack(alignment : .leading){
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text(__designTimeString("#5158.[1].[1].property.[0].[0].arg[1].value.[1].arg[1].value.[0].arg[1].value.[1].arg[0].value", fallback: "12 mi away"))
                        .foregroundStyle(.gray)
                    Text(__designTimeString("#5158.[1].[1].property.[0].[0].arg[1].value.[1].arg[1].value.[0].arg[1].value.[2].arg[0].value", fallback: "Nov 3 - 10"))
                        .foregroundStyle(.gray)
                    HStack(spacing : __designTimeInteger("#5158.[1].[1].property.[0].[0].arg[1].value.[1].arg[1].value.[0].arg[1].value.[3].arg[0].value", fallback: 5)){
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Text(__designTimeString("#5158.[1].[1].property.[0].[0].arg[1].value.[1].arg[1].value.[0].arg[1].value.[3].arg[1].value.[1].arg[0].value", fallback: "night"))
                            .foregroundStyle(.black)
                    }
                }
                Spacer()
                //rating
                let formattedRating = String(format: __designTimeString("#5158.[1].[1].property.[0].[0].arg[1].value.[1].arg[1].value.[2].value.arg[0].value", fallback: "%.2f"), listing.rating)
                HStack(spacing : __designTimeInteger("#5158.[1].[1].property.[0].[0].arg[1].value.[1].arg[1].value.[3].arg[0].value", fallback: 2)){
                    Image(systemName: __designTimeString("#5158.[1].[1].property.[0].[0].arg[1].value.[1].arg[1].value.[3].arg[1].value.[0].arg[0].value", fallback: "star.fill"))
                        .foregroundStyle(.black)
                    Text("\(formattedRating)")
                        .foregroundStyle(.black)
                }
            }
            .font(.footnote)
            
        }
    
#sourceLocation()
    }
}

import struct AirbnbClone.ListingItemView
#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[1])
}



