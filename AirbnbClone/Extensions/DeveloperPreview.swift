//
//  DeveloperPreview.swift
//  AirbnbClone
//
//  Created by Nisanur Korkmaz on 26/12/2023.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    var listings : [Listing] = [
        .init(
            id : NSUUID().uuidString,
            ownerUid : NSUUID().uuidString,
            ownerName : "John Smith",
            ownerImageUrl : "male-pp",
            numberOfBedrooms : 4,
            numberOfBathrooms : 3,
            numberOfGuests : 4,
            numberOfBeds : 4,
            pricePerNight : 2567,
            latitude : 25.7850,
            longitude : -80.1936,
            imageURLs : ["image6","image2","image3","image4"],
            adress : "124 Main St ",
            city : "Miami",
            state : "Florida",
            title : "Miami Villa",
            rating : 4.86,
            features : [.selfCheckIn, .superHost],
            amenities : [.wifi, .alarmSystem, .balcony, .laundry, .tv]
//            type : .villa
        ),
        .init(
            id : NSUUID().uuidString,
            ownerUid : NSUUID().uuidString,
            ownerName : "John Smith",
            ownerImageUrl : "male-pp",
            numberOfBedrooms : 7,
            numberOfBathrooms : 5,
            numberOfGuests : 7,
            numberOfBeds : 7,
            pricePerNight : 3712,
            latitude : 47.620422,
            longitude : -122.349358,
            imageURLs : ["image5","image2","image3","image1"],
            adress : "124 Main St ",
            city : "Seattle",
            state : "Whashington",
            title : "Seattle Villa",
            rating : 4.99,
            features : [.selfCheckIn, .superHost],
            amenities : [.wifi, .alarmSystem, .kitchen, .office, .tv]
//            type : .villa
        ),
        .init(
            id : NSUUID().uuidString,
            ownerUid : NSUUID().uuidString,
            ownerName : "John Smith",
            ownerImageUrl : "male-pp",
            numberOfBedrooms : 4,
            numberOfBathrooms : 3,
            numberOfGuests : 4,
            numberOfBeds : 4,
            pricePerNight : 763,
            latitude : 34.2,
            longitude : -118.0426,
            imageURLs : ["image3","image2","image1","image4"],
            adress : "124 Main St ",
            city : "Los Angeles",
            state : "California",
            title : "Beautiful Los Angeles home",
            rating : 4.86,
            features : [.selfCheckIn, .superHost],
            amenities : [.wifi, .alarmSystem, .pool]
//            type : .villa
        ),
        .init(
            id : NSUUID().uuidString,
            ownerUid : NSUUID().uuidString,
            ownerName : "Harry Style",
            ownerImageUrl : "male-pp",
            numberOfBedrooms : 4,
            numberOfBathrooms : 3,
            numberOfGuests : 4,
            numberOfBeds : 4,
            pricePerNight : 567,
            latitude : 37.774929,
            longitude : -122.41942,
            imageURLs : ["image2","image3","image4","image1"],
            adress : "124 Main St ",
            city : "San Fransisco",
            state : "California",
            title : "Miami Villa",
            rating : 4.86,
            features : [.selfCheckIn, .superHost],
            amenities : [.wifi, .alarmSystem, .balcony, .laundry, .tv]
//            type : .villa
        ),
        .init(
            id : NSUUID().uuidString,
            ownerUid : NSUUID().uuidString,
            ownerName : "Timothy Chalamet",
            ownerImageUrl : "male-pp",
            numberOfBedrooms : 4,
            numberOfBathrooms : 3,
            numberOfGuests : 4,
            numberOfBeds : 4,
            pricePerNight : 786,
            latitude : 25.7850,
            longitude : -80.1936,
            imageURLs : ["image1","image2","image3","image1"],
            adress : "124 Main St ",
            city : "Los Angeles",
            state: "California",
            title : "Biautiful Los Angeles home in Hollywood Hills",
            rating : 4.86,
            features : [.selfCheckIn, .superHost],
            amenities : [.wifi, .alarmSystem, .tv]
//            type : .villa
        ),
    ]
}
