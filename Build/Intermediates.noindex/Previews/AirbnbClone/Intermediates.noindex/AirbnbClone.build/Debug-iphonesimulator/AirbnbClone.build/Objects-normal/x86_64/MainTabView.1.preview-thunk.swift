@_private(sourceFile: "MainTabView.swift") import AirbnbClone
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension MainTabView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/TabBar/MainTabView.swift", line: 12)
        TabView{
            ExploreView()
                .tabItem { Label(__designTimeString("#27033.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: "Explore"), systemImage: __designTimeString("#27033.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[1].value", fallback: "magnifyingglass")) }
            WishlistsView()
                .tabItem { Label(__designTimeString("#27033.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[0].value", fallback: "Explore"), systemImage: __designTimeString("#27033.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[1].value", fallback: "magnifyingglass")) }
            ProfileView()
                .tabItem { Label(__designTimeString("#27033.[1].[0].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.[0].arg[0].value", fallback: "Explore"), systemImage: __designTimeString("#27033.[1].[0].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.[0].arg[1].value", fallback: "magnifyingglass")) }
        }
    
#sourceLocation()
    }
}

import struct AirbnbClone.MainTabView
#Preview {
    MainTabView()
}



