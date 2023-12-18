@_private(sourceFile: "WishlistsView.swift") import AirbnbClone
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension WishlistsView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/Wishlists/WishlistsView.swift", line: 12)
        NavigationStack{
            VStack(alignment: .leading, spacing: __designTimeInteger("#22120.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value", fallback: 32)){
                VStack(alignment: .leading, spacing: __designTimeInteger("#22120.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[1].value", fallback: 4)){
                    Text(__designTimeString("#22120.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[2].value.[0].arg[0].value", fallback: "Log in to view your wishlists "))
                        .font(.headline)
                    Text(__designTimeString("#22120.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[2].value.[1].arg[0].value", fallback: "You can create, view or edit whislists once you've logged in"))
                        .font(.footnote)
                }
                
                Button{
                    print(__designTimeString("#22120.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.[0].arg[0].value", fallback: "log in"))
                } label: {
                    Text(__designTimeString("#22120.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[1].value.[0].arg[0].value", fallback: "Log in"))
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: __designTimeInteger("#22120.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[1].value.[0].modifier[3].arg[0].value", fallback: 360), height: __designTimeInteger("#22120.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[1].value.[0].modifier[3].arg[1].value", fallback: 48))
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#22120.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[1].value.[0].modifier[5].arg[0].value.arg[0].value", fallback: 8)))
                }
                Spacer()
            }
            .padding()
            .navigationTitle(__designTimeString("#22120.[1].[0].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: "Wishlists"))
        }
    
#sourceLocation()
    }
}

import struct AirbnbClone.WishlistsView
#Preview {
    WishlistsView()
}



