@_private(sourceFile: "ExploreView.swift") import AirbnbClone
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ExploreView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/Explore/ExploreView.swift", line: 14)
        NavigationStack{
            if showDestinationSearchView{
                DestinationSearchView(show: $showDestinationSearchView)
            }else{
                ScrollView{
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestinationSearchView.toggle()
                            }
                            
                        }
                    LazyVStack(spacing : __designTimeInteger("#9912.[1].[1].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[1].arg[0].value", fallback: 32)){
                        ForEach(__designTimeInteger("#9912.[1].[1].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0]", fallback: 1) ... __designTimeInteger("#9912.[1].[1].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1]", fallback: 10), id: \.self){listing in
                            NavigationLink(value : listing){
                                ListingItemView()
                                    .frame(height: __designTimeInteger("#9912.[1].[1].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 400))
                                    .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#9912.[1].[1].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 10)))
                            }
                        }
                    }
                    .padding()
                }
                .navigationDestination(for: Int.self){listing in
                    ListingDetailView()
                        .navigationBarBackButtonHidden()
                }
            }
        }
    
#sourceLocation()
    }
}

import struct AirbnbClone.ExploreView
#Preview {
    ExploreView()
}



