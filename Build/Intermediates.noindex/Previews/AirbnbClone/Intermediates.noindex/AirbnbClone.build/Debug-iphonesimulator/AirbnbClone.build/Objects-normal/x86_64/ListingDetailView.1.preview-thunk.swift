@_private(sourceFile: "ListingDetailView.swift") import AirbnbClone
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI
import MapKit

extension ListingDetailView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/Listings/View/ListingDetailView.swift", line: 28)
        ScrollView{
            ZStack(alignment : .topLeading){
                ListingImageCarouselView(listing: listing)
                    .frame(height : __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 320))
                
                Button{
                    dismiss()
                } label: {
                    Image(systemName: __designTimeString("#33987.[2].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].arg[0].value", fallback: "chevron.left"))
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width : __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].modifier[1].arg[0].value.[0].modifier[1].arg[0].value", fallback: 32), height: __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].modifier[1].arg[0].value.[0].modifier[1].arg[1].value", fallback: 32))
                        }
                        .padding(__designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].modifier[2].arg[0].value", fallback: 32))
                }
            }
            
            VStack(alignment: .leading, spacing: __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[1].arg[1].value", fallback: 8)){
                Text(listing.title)
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading){
                    HStack(spacing : __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[1].arg[2].value.[1].arg[1].value.[0].arg[0].value", fallback: 2)){
                        Image(systemName: __designTimeString("#33987.[2].[4].property.[0].[0].arg[0].value.[1].arg[2].value.[1].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "star.fill"))
                            .foregroundStyle(.black)
                        Text("\(listing.rating) - ")
                            .foregroundStyle(.black)
                        
                        Text(__designTimeString("#33987.[2].[4].property.[0].[0].arg[0].value.[1].arg[2].value.[1].arg[1].value.[0].arg[1].value.[2].arg[0].value", fallback: "28 reviews"))
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text("\(listing.city), \(listing.state)")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            //host info view
            HStack{
                VStack(alignment : .leading, spacing: __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[1].value", fallback: 4)){
                    Text("Entire villa hosted by \(listing.ownerName)")
                        .font(.headline)
                        .frame(width: __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[2].value.[0].modifier[1].arg[0].value", fallback: 250), alignment: .leading)
                    
                    Text("\(listing.numberOfGuests) Guest - \(listing.numberOfBedrooms) Bedrooms - \(listing.numberOfBeds) Beds -  \(listing.numberOfBathrooms) Bathrooms")
                        .font(.caption)
                }
                .frame(width: __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[0].value", fallback: 300), alignment: .leading)
                Spacer()
                
                Image(__designTimeString("#33987.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value", fallback: "male-pp"))
                    .resizable()
                    .scaledToFill()
                    .frame(width: __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[2].modifier[2].arg[0].value", fallback: 60), height: __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[2].modifier[2].arg[1].value", fallback: 60))
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            .padding()
            
            Divider()
            
            //listing features
            VStack(alignment : .leading, spacing: __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[5].arg[1].value", fallback: 16)){
                ForEach(listing.features) { feature in
                    HStack(spacing : __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[5].arg[2].value.[0].arg[1].value.[0].arg[0].value", fallback: 12)){
                        Image(systemName: feature.imageName)
                        
                        VStack(alignment: .leading){
                            Text(feature.title)
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text(feature.subtitle)
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
            
            //bedrooms view
            VStack(alignment: .leading, spacing: __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[7].arg[1].value", fallback: 16)){
                Text(__designTimeString("#33987.[2].[4].property.[0].[0].arg[0].value.[7].arg[2].value.[0].arg[0].value", fallback: "Where you'll sleep"))
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: __designTimeBoolean("#33987.[2].[4].property.[0].[0].arg[0].value.[7].arg[2].value.[1].arg[1].value", fallback: false)){
                    HStack(spacing : __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[7].arg[2].value.[1].arg[2].value.[0].arg[0].value", fallback: 16)){
                        ForEach(__designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[7].arg[2].value.[1].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0]", fallback: 1) ... listing.numberOfBedrooms, id: \.self){ bedroom in
                            VStack{
                                Image(systemName: __designTimeString("#33987.[2].[4].property.[0].[0].arg[0].value.[7].arg[2].value.[1].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].arg[0].value.[0].arg[0].value", fallback: "bed.double"))
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[7].arg[2].value.[1].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value", fallback: 132), height: __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[7].arg[2].value.[1].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[1].value", fallback: 100))
                            .overlay{
                                RoundedRectangle(cornerRadius: __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[7].arg[2].value.[1].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[1].arg[0].value.[0].arg[0].value", fallback: 12))
                                    .stroke(lineWidth: __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[7].arg[2].value.[1].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: 1))
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            //listing amenities
            VStack(alignment: .leading, spacing : __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[9].arg[1].value", fallback: 16)){
                Text(__designTimeString("#33987.[2].[4].property.[0].[0].arg[0].value.[9].arg[2].value.[0].arg[0].value", fallback: "What this place offers"))
                    .font(.headline)
                ForEach(listing.amenities){ amenity in
                    HStack{
                        Image(systemName: amenity.imagename)
                            .frame(width : __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[9].arg[2].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 32))
                        Text(amenity.title)
                            .font(.footnote)
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[11].arg[1].value", fallback: 16)){
                Text(__designTimeString("#33987.[2].[4].property.[0].[0].arg[0].value.[11].arg[2].value.[0].arg[0].value", fallback: "Where you will be"))
                    .font(.headline)
                
                Map(position : $cameraPosition)
                    .frame(height : __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[11].arg[2].value.[1].modifier[0].arg[0].value", fallback: 200))
                    .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#33987.[2].[4].property.[0].[0].arg[0].value.[11].arg[2].value.[1].modifier[1].arg[0].value.arg[0].value", fallback: 12)))
            }
            .padding()
        }
        //toolbar is here to mask the tabbar
        .toolbar(.hidden, for : .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, __designTimeInteger("#33987.[2].[4].property.[0].[0].modifier[2].arg[1].value", fallback: 64))
        .overlay(alignment : .bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                
                HStack{
                    VStack(alignment : .leading){
                        Text("$ \(listing.pricePerNight)")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text(__designTimeString("#33987.[2].[4].property.[0].[0].modifier[3].arg[1].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "Total before taxes"))
                            .font(.footnote)
                        Text(__designTimeString("#33987.[2].[4].property.[0].[0].modifier[3].arg[1].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[2].arg[0].value", fallback: "Oct 15-20"))
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Spacer()
                    
                    Button{
                        
                    }label: {
                        Text(__designTimeString("#33987.[2].[4].property.[0].[0].modifier[3].arg[1].value.[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "Reserve"))
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width : __designTimeInteger("#33987.[2].[4].property.[0].[0].modifier[3].arg[1].value.[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].modifier[3].arg[0].value", fallback: 140), height : __designTimeInteger("#33987.[2].[4].property.[0].[0].modifier[3].arg[1].value.[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].modifier[3].arg[1].value", fallback: 40))
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#33987.[2].[4].property.[0].[0].modifier[3].arg[1].value.[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].modifier[5].arg[0].value.arg[0].value", fallback: 8)))
                    }
                }
                .padding(.horizontal, __designTimeInteger("#33987.[2].[4].property.[0].[0].modifier[3].arg[1].value.[0].arg[0].value.[1].modifier[0].arg[1].value", fallback: 32))
            }
            .background(.white)
        }
        
    
#sourceLocation()
    }
}

import struct AirbnbClone.ListingDetailView
#Preview {
    ListingDetailView(listing: DeveloperPreview.shared.listings[1])
}



