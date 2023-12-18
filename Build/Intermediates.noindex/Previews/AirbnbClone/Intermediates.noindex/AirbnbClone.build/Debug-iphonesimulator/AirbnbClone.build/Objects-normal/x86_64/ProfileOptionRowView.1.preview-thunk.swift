@_private(sourceFile: "ProfileOptionRowView.swift") import AirbnbClone
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ProfileOptionRowView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/Profile/ProfileOptionRowView.swift", line: 14)
        VStack{
            HStack{
                Image(systemName: imageName)
                Text(title)
                    .font(.subheadline)
                
                Spacer()
                
                Image(systemName: __designTimeString("#17501.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value", fallback: "chevron.right"))
            }
            Divider()
        }
    
#sourceLocation()
    }
}

import struct AirbnbClone.ProfileOptionRowView
#Preview {
    ProfileOptionRowView(imageName: "gear", title: "Settings")
}



