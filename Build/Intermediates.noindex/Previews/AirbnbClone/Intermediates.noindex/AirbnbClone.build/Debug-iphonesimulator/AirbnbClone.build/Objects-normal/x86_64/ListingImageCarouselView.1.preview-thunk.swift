@_private(sourceFile: "ListingImageCarouselView.swift") import AirbnbClone
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ListingImageCarouselView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/Components/ListingImageCarouselView.swift", line: 14)
        ScrollView{
            TabView{
                ForEach(images, id: \.self){ image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: __designTimeInteger("#5341.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 320))
            .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#5341.[1].[1].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 10)))
            .tabViewStyle(.page)
        }
    
#sourceLocation()
    }
}

import struct AirbnbClone.ListingImageCarouselView
#Preview {
    ListingImageCarouselView()
}



