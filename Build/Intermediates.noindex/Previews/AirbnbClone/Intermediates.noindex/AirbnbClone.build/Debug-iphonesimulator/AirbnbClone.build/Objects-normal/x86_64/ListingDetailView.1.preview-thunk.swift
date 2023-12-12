@_private(sourceFile: "ListingDetailView.swift") import AirbnbClone
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ListingDetailView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/Listings/ListingDetailView.swift", line: 14)
        ScrollView{
            ListingImageCarouselView()
                .frame(height : __designTimeInteger("#27204.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 320))
            
            VStack(alignment: .leading, spacing: __designTimeInteger("#27204.[1].[0].property.[0].[0].arg[0].value.[1].arg[1].value", fallback: 8)){
                Text(__designTimeString("#27204.[1].[0].property.[0].[0].arg[0].value.[1].arg[2].value.[0].arg[0].value", fallback: "Miami Villa"))
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading){
                    HStack(spacing : __designTimeInteger("#27204.[1].[0].property.[0].[0].arg[0].value.[1].arg[2].value.[1].arg[1].value.[0].arg[0].value", fallback: 2)){
                        Image(systemName: __designTimeString("#27204.[1].[0].property.[0].[0].arg[0].value.[1].arg[2].value.[1].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "star.fill"))
                            .foregroundStyle(.black)
                        Text(__designTimeString("#27204.[1].[0].property.[0].[0].arg[0].value.[1].arg[2].value.[1].arg[1].value.[0].arg[1].value.[1].arg[0].value", fallback: "4.86 - "))
                            .foregroundStyle(.black)
                        
                        Text(__designTimeString("#27204.[1].[0].property.[0].[0].arg[0].value.[1].arg[2].value.[1].arg[1].value.[0].arg[1].value.[2].arg[0].value", fallback: "28 reviews"))
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text(__designTimeString("#27204.[1].[0].property.[0].[0].arg[0].value.[1].arg[2].value.[1].arg[1].value.[1].arg[0].value", fallback: "Miami, Florida"))
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            //host info view
            HStack{
                VStack(alignment : .leading, spacing: __designTimeInteger("#27204.[1].[0].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[1].value", fallback: 4)){
                    Text(__designTimeString("#27204.[1].[0].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[2].value.[0].arg[0].value", fallback: "Entire villa hosted by John Smith"))
                        .font(.headline)
                        .frame(width: __designTimeInteger("#27204.[1].[0].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[2].value.[0].modifier[1].arg[0].value", fallback: 250), alignment: .leading)
                    
                    Text(__designTimeString("#27204.[1].[0].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[2].value.[1].arg[0].value", fallback: "4 Guest - 4 bedrooms - 4 beds - 3 baths"))
                        .font(.caption)
                }
                .frame(width: __designTimeInteger("#27204.[1].[0].property.[0].[0].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[0].value", fallback: 300), alignment: .leading)
                Spacer()
                
                Image(__designTimeString("#27204.[1].[0].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value", fallback: "male-pp"))
                    .resizable()
                    .scaledToFill()
                    .frame(width: __designTimeInteger("#27204.[1].[0].property.[0].[0].arg[0].value.[3].arg[0].value.[2].modifier[2].arg[0].value", fallback: 60), height: __designTimeInteger("#27204.[1].[0].property.[0].[0].arg[0].value.[3].arg[0].value.[2].modifier[2].arg[1].value", fallback: 60))
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            .padding()
            
            Divider()
            
            //listing features
            VStack(alignment : .leading, spacing: __designTimeInteger("#27204.[1].[0].property.[0].[0].arg[0].value.[5].arg[1].value", fallback: 16)){
                ForEach(__designTimeInteger("#27204.[1].[0].property.[0].[0].arg[0].value.[5].arg[2].value.[0].arg[0].value.[0]", fallback: 0) ..< __designTimeInteger("#27204.[1].[0].property.[0].[0].arg[0].value.[5].arg[2].value.[0].arg[0].value.[1]", fallback: 2)) { feature in
                    HStack(spacing : __designTimeInteger("#27204.[1].[0].property.[0].[0].arg[0].value.[5].arg[2].value.[0].arg[1].value.[0].arg[0].value", fallback: 12)){
                        Image(systemName: __designTimeString("#27204.[1].[0].property.[0].[0].arg[0].value.[5].arg[2].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "medal"))
                        
                        VStack(alignment: .leading){
                            Text(__designTimeString("#27204.[1].[0].property.[0].[0].arg[0].value.[5].arg[2].value.[0].arg[1].value.[0].arg[1].value.[1].arg[1].value.[0].arg[0].value", fallback: "SuperHost"))
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text(__designTimeString("#27204.[1].[0].property.[0].[0].arg[0].value.[5].arg[2].value.[0].arg[1].value.[0].arg[1].value.[1].arg[1].value.[1].arg[0].value", fallback: "Superhosts are experienced, highly rated hosts who are commited to providing great stars for guests. "))
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                    
                }
            }
            //            .frame(maxWidth : .infinity, alignment : .leading) fait la meme chose que le spacer en haut
            .padding()
            
            Divider()
        }
    
#sourceLocation()
    }
}

import struct AirbnbClone.ListingDetailView
#Preview {
    ListingDetailView()
}



