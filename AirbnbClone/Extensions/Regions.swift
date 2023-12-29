//
//  Regions.swift
//  AirbnbClone
//
//  Created by Nisanur Korkmaz on 27/12/2023.
//

import CoreLocation

extension CLLocationCoordinate2D {
    static var miami = CLLocationCoordinate2D(latitude: 25.7602, longitude: -80.1959)
    static var losAngeles = CLLocationCoordinate2D(latitude: 34.0549, longitude: -118.2426)
    static var seattle = CLLocation(latitude: 47.6204, longitude: -122.3493)
    static var sanFransisco = CLLocation(latitude: 37.7749, longitude: -122.4194)
    
//    var cityEnum: City
//    
//    switch listing.city {
//    case "Los Angeles":
//        cityEnum = .losAngeles
//    case "Miami":
//        cityEnum = .miami
//    case "Seattle":
//        cityEnum = .seattle
//    case "San Fransisco":
//        cityEnum = .sanFransisco
//    default:
//        cityEnum = .unknown
//    }

}

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
