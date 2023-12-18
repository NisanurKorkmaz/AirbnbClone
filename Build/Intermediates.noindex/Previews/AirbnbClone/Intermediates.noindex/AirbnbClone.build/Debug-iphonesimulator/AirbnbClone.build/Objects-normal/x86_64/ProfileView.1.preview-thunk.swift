@_private(sourceFile: "ProfileView.swift") import AirbnbClone
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ProfileView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/Profile/ProfileView.swift", line: 12)
        VStack {
            //profile login view
            VStack(alignment :.leading, spacing : __designTimeInteger("#9555.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value", fallback: 32)){
                VStack(alignment :.leading, spacing : __designTimeInteger("#9555.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[1].value", fallback: 8)){
                    Text(__designTimeString("#9555.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[2].value.[0].arg[0].value", fallback: "Profile"))
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text(__designTimeString("#9555.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[2].value.[1].arg[0].value", fallback: "Log in to start planning your next trip"))
                }
                Button{
                    print(__designTimeString("#9555.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.[0].arg[0].value", fallback: "log in"))
                } label: {
                    Text(__designTimeString("#9555.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[1].value.[0].arg[0].value", fallback: "Log in"))
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: __designTimeInteger("#9555.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[1].value.[0].modifier[3].arg[0].value", fallback: 360), height: __designTimeInteger("#9555.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[1].value.[0].modifier[3].arg[1].value", fallback: 48))
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#9555.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[1].value.[0].modifier[5].arg[0].value.arg[0].value", fallback: 8)))
                }
                HStack{
                    Text(__designTimeString("#9555.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[2].arg[0].value.[0].arg[0].value", fallback: "Don't have an account?"))
                    Text(__designTimeString("#9555.[1].[0].property.[0].[0].arg[0].value.[0].arg[2].value.[2].arg[0].value.[1].arg[0].value", fallback: "Sign up"))
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            //profile options
            VStack(spacing : __designTimeInteger("#9555.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: 24)){
                ProfileOptionRowView(imageName: __designTimeString("#9555.[1].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "gear"), title: __designTimeString("#9555.[1].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[1].value", fallback: "Settings"))
                ProfileOptionRowView(imageName: __designTimeString("#9555.[1].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[1].arg[0].value", fallback: "gear"), title: __designTimeString("#9555.[1].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[1].arg[1].value", fallback: "Accessibility"))
                ProfileOptionRowView(imageName: __designTimeString("#9555.[1].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value", fallback: "questionmark.cirle"), title: __designTimeString("#9555.[1].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[1].value", fallback: "Visit the Help center"))
            }
            .padding(.vertical)
        }
        .padding()
    
#sourceLocation()
    }
}

import struct AirbnbClone.ProfileView
#Preview {
    ProfileView()
}



