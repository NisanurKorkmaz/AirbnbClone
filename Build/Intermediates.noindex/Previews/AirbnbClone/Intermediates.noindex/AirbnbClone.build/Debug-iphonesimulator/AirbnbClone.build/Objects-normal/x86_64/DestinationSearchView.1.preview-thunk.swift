@_private(sourceFile: "DestinationSearchView.swift") import AirbnbClone
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension DestinationSearchView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/Explore/DestinationSearchView.swift", line: 14)
        VStack{
            Button{
                withAnimation(.snappy){
                    show.toggle()
                }
            }label: {
                Image(systemName: __designTimeString("#10098.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "xmark.circle"))
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            
            VStack(alignment : .leading){
                Text(__designTimeString("#10098.[1].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Where to ?"))
                    .font(.title2)
                    .fontWeight(.semibold)
                HStack{
                    Image(systemName: __designTimeString("#10098.[1].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[1].arg[0].value.[0].arg[0].value", fallback: "magnifyingglass"))
                        .imageScale(.small)
                    TextField(__designTimeString("#10098.[1].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[1].arg[0].value.[1].arg[0].value", fallback: "Search Destinations"), text: $destination)
                        .font(.subheadline)
                }
                .frame(height: __designTimeInteger("#10098.[1].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[1].modifier[0].arg[0].value", fallback: 44))
                .padding(.horizontal)
                .overlay{
                    RoundedRectangle(cornerRadius: __designTimeInteger("#10098.[1].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[1].modifier[2].arg[0].value.[0].arg[0].value", fallback: 8))
                        .stroke(lineWidth: __designTimeFloat("#10098.[1].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[1].modifier[2].arg[0].value.[0].modifier[0].arg[0].value", fallback: 1.0))
                        .foregroundStyle(Color(.systemGray4))
                }
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#10098.[1].[2].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.arg[0].value", fallback: 12)))
            .padding()
            .shadow(radius: __designTimeInteger("#10098.[1].[2].property.[0].[0].arg[0].value.[1].modifier[4].arg[0].value", fallback: 10))
            
            //date selection view
            VStack{
                HStack{
                    Text(__designTimeString("#10098.[1].[2].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "When"))
                        .foregroundStyle(.gray)
                    Spacer()
                    Text(__designTimeString("#10098.[1].[2].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "Add dates"))
                }
                .fontWeight(.semibold)
                .font(.subheadline)
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#10098.[1].[2].property.[0].[0].arg[0].value.[2].modifier[2].arg[0].value.arg[0].value", fallback: 12)))
            .padding()
            .shadow(radius: __designTimeInteger("#10098.[1].[2].property.[0].[0].arg[0].value.[2].modifier[4].arg[0].value", fallback: 10))
            
            //num guests view
            VStack{
                HStack{
                    Text(__designTimeString("#10098.[1].[2].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Who"))
                        .foregroundStyle(.gray)
                    Spacer()
                    Text(__designTimeString("#10098.[1].[2].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "Add guests"))
                }
                .fontWeight(.semibold)
                .font(.subheadline)
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#10098.[1].[2].property.[0].[0].arg[0].value.[3].modifier[2].arg[0].value.arg[0].value", fallback: 12)))
            .padding()
            .shadow(radius: __designTimeInteger("#10098.[1].[2].property.[0].[0].arg[0].value.[3].modifier[4].arg[0].value", fallback: 10))
            
        }
        Spacer()
    
#sourceLocation()
    }
}

import struct AirbnbClone.DestinationSearchView
#Preview {
    DestinationSearchView(show: .constant(false))
}



