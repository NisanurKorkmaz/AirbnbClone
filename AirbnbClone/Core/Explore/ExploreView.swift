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
                SearchAndFilterBar()
                LazyVStack(spacing : 32){
                    ForEach(1 ... 10, id: \.self){listing in
                        NavigationLink(value : listing){
                            ListingItemView()
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self){listing in
                Text("hello")
                
            }
        }
    }
}

#Preview {
    ExploreView()
}
