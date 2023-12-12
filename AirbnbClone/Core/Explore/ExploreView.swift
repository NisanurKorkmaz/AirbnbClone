//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Nisanur Korkmaz on 12/12/2023.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing : 32){
                    ForEach(1 ... 10, id: \.self){listing in
                        ListingItemView()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
