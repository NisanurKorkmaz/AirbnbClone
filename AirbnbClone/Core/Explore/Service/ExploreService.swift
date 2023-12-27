//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Nisanur Korkmaz on 27/12/2023.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing]{
        return DeveloperPreview.shared.listings
    }
}
