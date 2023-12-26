//
//  Listing.swift
//  AirbnbClone
//
//  Created by Nisanur Korkmaz on 26/12/2023.
//

import Foundation

struct Listing : Identifiable, Codable{
    let id : String
    let ownerUid : String
    let ownerName : String
    let ownerImageUrl : String
    let numberOfBedrooms : Int
    let numberOfBathrooms : Int
    let numberOfGuests : Int
    let numberOfBeds : Int
    var pricePerNight : Int
    let latitude : Double
    let longitude : Double
    var imageURLs : [String]
    let adress : String
    let city : String
    let state : String
    let title : String
    var rating : Double
    var features : [ListingFeatures]
    var amenities : [ListingAmenities]
//    var type : ListingType
}

enum ListingFeatures : Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost
    
    var imageName : String{
        switch self {
            case .selfCheckIn : return "door.left.hand.open"
            case .superHost : return "medal"
        }
    }
    
    var title : String{
        switch self {
            case .selfCheckIn : return "Self check-in"
            case .superHost : return "Superhost"
        }
    }
    
    var subtitle : String{
        switch self {
            case .selfCheckIn : 
                return "Chek yourself in with the keypad"
            case .superHost :
                return "Superhosts are experienced, highly rated hosts are commited to providing greate stars for guests."
        }
    }
    
    var id : Int{return self.rawValue}
}

enum ListingAmenities : Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title : String{
        switch self {
        case .pool : return "Pool"
        case .kitchen : return "Kitchen"
        case .wifi : return "Wifi"
        case .laundry : return "Laundry"
        case .tv : return "TV"
        case .alarmSystem: return "Alarm System"
        case .office : return "Office"
        case .balcony : return "Balcony"
        
        }
    }

    var imagename : String{
        switch self {
        case .pool : return "figure.pool.swim"
        case .kitchen : return "fork.knife"
        case .wifi : return "wifi"
        case .laundry : return "washer"
        case .tv : return "tv"
        case .alarmSystem: return "checkerboard.shield"
        case .office : return "pensil.and.ruller.fill"
        case .balcony : return "building"
        }
    }
    
    
    var id : Int{return self.rawValue}
}
