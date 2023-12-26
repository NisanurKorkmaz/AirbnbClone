//
//  DeveloperPreview.swift
//  AirbnbClone
//
//  Created by Nisanur Korkmaz on 26/12/2023.
//

import Foundation

class DeveloperPreview {
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
            pricePerNight : 567,
            latitude : 25.7850,
            longitude : -80.1936,
            imageURLs : ["image1","image2","image3","image4"],
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
            numberOfBedrooms : 4,
            numberOfBathrooms : 3,
            numberOfGuests : 4,
            numberOfBeds : 4,
            pricePerNight : 567,
            latitude : 25.7706,
            longitude : -80.1340,
            imageURLs : ["image4","image2","image3","image1"],
            adress : "124 Main St ",
            city : "Miami",
            state : "Florida",
            title : "Miami Villa",
            rating : 4.86,
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
            state : "california",
            title : "Bieautiful Los Angeles home in Malibu",
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
            latitude : 25.7850,
            longitude : -80.1936,
            imageURLs : ["image4","image2","image3","image1"],
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
            ownerName : "Timothy Chalamet",
            ownerImageUrl : "male-pp",
            numberOfBedrooms : 4,
            numberOfBathrooms : 3,
            numberOfGuests : 4,
            numberOfBeds : 4,
            pricePerNight : 786,
            latitude : 25.7850,
            longitude : -80.1936,
            imageURLs : ["image1","image2","image3","image4"],
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
