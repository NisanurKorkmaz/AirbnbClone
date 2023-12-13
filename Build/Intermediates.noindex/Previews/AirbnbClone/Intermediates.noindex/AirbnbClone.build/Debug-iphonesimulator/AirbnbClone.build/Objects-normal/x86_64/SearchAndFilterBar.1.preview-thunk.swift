@_private(sourceFile: "SearchAndFilterBar.swift") import AirbnbClone
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension SearchAndFilterBar {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/Explore/SearchAndFilterBar.swift", line: 12)
        HStack(){
            Image(systemName: __designTimeString("#11492.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "magnifyingglass"))
            
            VStack(alignment : .leading, spacing: __designTimeInteger("#11492.[1].[0].property.[0].[0].arg[0].value.[1].arg[1].value", fallback: 2)){
                Text(__designTimeString("#11492.[1].[0].property.[0].[0].arg[0].value.[1].arg[2].value.[0].arg[0].value", fallback: "Where to ?"))
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text(__designTimeString("#11492.[1].[0].property.[0].[0].arg[0].value.[1].arg[2].value.[1].arg[0].value", fallback: "Anywhere- Any Week- Add guests"))
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: __designTimeString("#11492.[1].[0].property.[0].[0].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "line.3.horizontal.decrease.circle"))
                    .foregroundStyle(.black)
            })
        }
        .padding(.horizontal)
        .padding(.vertical, __designTimeInteger("#11492.[1].[0].property.[0].[0].modifier[1].arg[1].value", fallback: 10))
        .overlay{
            Capsule()
                .stroke(lineWidth: __designTimeFloat("#11492.[1].[0].property.[0].[0].modifier[2].arg[0].value.[0].modifier[0].arg[0].value", fallback: 0.5))
                .foregroundStyle(Color(.systemGray4))
                .shadow(color : .black.opacity(__designTimeFloat("#11492.[1].[0].property.[0].[0].modifier[2].arg[0].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.4)), radius: __designTimeInteger("#11492.[1].[0].property.[0].[0].modifier[2].arg[0].value.[0].modifier[2].arg[1].value", fallback: 2))
        }
        .padding()
    
#sourceLocation()
    }
}

import struct AirbnbClone.SearchAndFilterBar
#Preview {
    SearchAndFilterBar()
}



