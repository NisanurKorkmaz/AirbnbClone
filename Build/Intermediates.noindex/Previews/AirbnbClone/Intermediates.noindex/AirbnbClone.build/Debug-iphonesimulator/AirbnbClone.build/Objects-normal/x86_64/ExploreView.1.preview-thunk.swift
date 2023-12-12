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
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/Explore/ExploreView.swift", line: 12)
        NavigationStack{
            ScrollView{
                LazyVStack{
                    
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



