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
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/Listings/ListingItemView.swift", line: 12)
        VStack(spacing : __designTimeInteger("#32647.[1].[0].property.[0].[0].arg[0].value", fallback: 8)){
            //images
            ListingImageCarouselView()
                .frame(height: __designTimeInteger("#32647.[1].[0].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 320))
                .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#32647.[1].[0].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 10)))
            
            
            //listings details
            HStack(alignment : .top){
                //datails
                VStack(alignment : .leading){
                    Text(__designTimeString("#32647.[1].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "Miami, Florida"))
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text(__designTimeString("#32647.[1].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].arg[1].value.[1].arg[0].value", fallback: "12 mi away"))
                        .foregroundStyle(.gray)
                    Text(__designTimeString("#32647.[1].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].arg[1].value.[2].arg[0].value", fallback: "Nov 3 - 10"))
                        .foregroundStyle(.gray)
                    HStack(spacing : __designTimeInteger("#32647.[1].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].arg[1].value.[3].arg[0].value", fallback: 5)){
                        Text(__designTimeString("#32647.[1].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].arg[1].value.[3].arg[1].value.[0].arg[0].value", fallback: "$567"))
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Text(__designTimeString("#32647.[1].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].arg[1].value.[3].arg[1].value.[1].arg[0].value", fallback: "night"))
                            .foregroundStyle(.black)
                    }
                }
                Spacer()
                //rating
                HStack(spacing : __designTimeInteger("#32647.[1].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[2].arg[0].value", fallback: 2)){
                    Image(systemName: __designTimeString("#32647.[1].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[2].arg[1].value.[0].arg[0].value", fallback: "star.fill"))
                        .foregroundStyle(.black)
                    Text(__designTimeString("#32647.[1].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[2].arg[1].value.[1].arg[0].value", fallback: "4.86"))
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
    ListingItemView()
}



