//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by Nisanur Korkmaz on 12/12/2023.
//

import SwiftUI
import MapKit
//enum City {
//    case losAngeles
//    case miami
//    case sanFransisco
//    case seattle
//    case unknown
//}
//class CityHandler {
//    func coordinates (for city : City ) -> CLLocationCoordinate2D {
//        switch city {
//        case .losAngeles:
//            return CLLocationCoordinate2D(latitude: 34.0549, longitude: -118.2426)
//        case .miami:
//            return CLLocationCoordinate2D(latitude: 25.7602, longitude: -80.1959)
//        case .seattle:
//            return CLLocationCoordinate2D(latitude: 47.6204, longitude: -122.3493)
//        case .sanFransisco:
//            return CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
//        default:
//            return CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0)
//        }}
//
//}
struct ListingDetailView: View {
    @Environment(\.dismiss) var dismiss
    let listing : Listing
    @State private var cameraPosition: MapCameraPosition
    
//    let cityHandler = CityHandler()
//    
//    enum City {
//        case losAngeles
//        case miami
//        case sanFransisco
//        case seattle
//        case unknown
//    }
//    
    init(listing : Listing){
        self.listing = listing
        
//        var cityEnum: City
//        switch listing.city {
//        case "Los Angeles":
//            cityEnum = .losAngeles
//        case "Miami":
//            cityEnum = .miami
//        case "Seattle":
//            cityEnum = .seattle
//        case "San Fransisco":
//            cityEnum = .sanFransisco
//        default:
//            <#code#>
//        }
        
        let region = MKCoordinateRegion(
            center: listing.city == "Los Angeles" ? .losAngeles : .miami,
//            center: cityHandler.coordinates(for: cityEnum),
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        
        self._cameraPosition = State(initialValue: .region(region))
    }
    var body: some View {
        ScrollView{
            ZStack(alignment : .topLeading){
                ListingImageCarouselView(listing: listing)
                    .frame(height : 320)
                
                Button{
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width : 32, height: 32)
                        }
                        .padding(32)
                }
            }
            let formattedRating = String(format: "%.2f", listing.rating)
            VStack(alignment: .leading, spacing: 8){
                Text(listing.title)
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading){
                    HStack(spacing : 2){
                        Image(systemName: "star.fill")
                            .foregroundStyle(.black)
//                        Text("\(listing.rating) - ")
                        Text("\(formattedRating) - ")
                            .foregroundStyle(.black)
                        
                        Text("28 reviews")
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
                VStack(alignment : .leading, spacing: 4){
                    Text("Entire villa hosted by \(listing.ownerName)")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    Text("\(listing.numberOfGuests) Guest - \(listing.numberOfBedrooms) Bedrooms - \(listing.numberOfBeds) Beds -  \(listing.numberOfBathrooms) Bathrooms")
                        .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                Spacer()
                
                Image("male-pp")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            .padding()
            
            Divider()
            
            //listing features
            VStack(alignment : .leading, spacing: 16){
                ForEach(listing.features) { feature in
                    HStack(spacing : 12){
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
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing : 16){
                        ForEach(1 ... listing.numberOfBedrooms, id: \.self){ bedroom in
                            VStack{
                                Image(systemName: "bed.double")
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
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
            VStack(alignment: .leading, spacing : 16){
                Text("What this place offers")
                    .font(.headline)
                ForEach(listing.amenities){ amenity in
                    HStack{
                        Image(systemName: amenity.imagename)
                            .frame(width : 32)
                        Text(amenity.title)
                            .font(.footnote)
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                Text("Where you will be")
                    .font(.headline)
                
                Map(position : $cameraPosition)
                    .frame(height : 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        //toolbar is here to mask the tabbar
        .toolbar(.hidden, for : .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment : .bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                
                HStack{
                    VStack(alignment : .leading){
                        Text("$ \(listing.pricePerNight)")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                            .font(.footnote)
                        Text("Oct 15-20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Spacer()
                    
                    Button{
                        
                    }label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width : 140, height : 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
        
    }
}
//let cityEnum : City
//func coordinates (for city : City ) -> CLLocationCoordinate2D {
//    switch city {
//    case .losAngeles:
//        return CLLocationCoordinate2D(latitude: 34.0549, longitude: -118.2426)
//    case .miami:
//        return CLLocationCoordinate2D(latitude: 25.7602, longitude: -80.1959)
//    case .seattle:
//        return CLLocationCoordinate2D(latitude: 47.6204, longitude: -122.3493)
//    case .sanFransisco:
//        return CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
//    default:
//        return CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0)
//    }}

#Preview {
    ListingDetailView(listing: DeveloperPreview.shared.listings[1])
}
