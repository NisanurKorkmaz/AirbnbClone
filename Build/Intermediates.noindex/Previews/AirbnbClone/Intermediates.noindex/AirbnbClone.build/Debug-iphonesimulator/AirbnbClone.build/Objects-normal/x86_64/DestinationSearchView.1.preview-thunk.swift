@_private(sourceFile: "DestinationSearchView.swift") import AirbnbClone
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CollapsedPickerView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/Explore/DestinationSearchView.swift", line: 116)
        VStack{
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
//        .padding()
//        .background(.white)
//        .clipShape(RoundedRectangle(cornerRadius: 12))
//        .padding()
//        .shadow(radius: 10)
    
#sourceLocation()
    }
}

extension DestinationSearchView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/Explore/DestinationSearchView.swift", line: 22)
        VStack{
            Button{
                withAnimation(.snappy){
                    show.toggle()
                }
            }label: {
                Image(systemName: __designTimeString("#10098.[2].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "xmark.circle"))
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            
            VStack(alignment : .leading){
                if selectedOption == .location{
                    Text(__designTimeString("#10098.[2].[3].property.[0].[0].arg[0].value.[1].arg[1].value.[0].[0].[0].arg[0].value", fallback: "Where to ?"))
                        .font(.title2)
                        .fontWeight(.semibold)
                    HStack{
                        Image(systemName: __designTimeString("#10098.[2].[3].property.[0].[0].arg[0].value.[1].arg[1].value.[0].[0].[1].arg[0].value.[0].arg[0].value", fallback: "magnifyingglass"))
                            .imageScale(.small)
                        TextField(__designTimeString("#10098.[2].[3].property.[0].[0].arg[0].value.[1].arg[1].value.[0].[0].[1].arg[0].value.[1].arg[0].value", fallback: "Search Destinations"), text: $destination)
                            .font(.subheadline)
                    }
                    .frame(height: __designTimeInteger("#10098.[2].[3].property.[0].[0].arg[0].value.[1].arg[1].value.[0].[0].[1].modifier[0].arg[0].value", fallback: 44))
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius: __designTimeInteger("#10098.[2].[3].property.[0].[0].arg[0].value.[1].arg[1].value.[0].[0].[1].modifier[2].arg[0].value.[0].arg[0].value", fallback: 8))
                            .stroke(lineWidth: __designTimeFloat("#10098.[2].[3].property.[0].[0].arg[0].value.[1].arg[1].value.[0].[0].[1].modifier[2].arg[0].value.[0].modifier[0].arg[0].value", fallback: 1.0))
                            .foregroundStyle(Color(.systemGray4))
                    }
                }else{
                    CollapsedPickerView(title: __designTimeString("#10098.[2].[3].property.[0].[0].arg[0].value.[1].arg[1].value.[0].[1].[0].arg[0].value", fallback: "Where"), description: __designTimeString("#10098.[2].[3].property.[0].[0].arg[0].value.[1].arg[1].value.[0].[1].[0].arg[1].value", fallback: "Add destination"))
                }
            }
            .padding()
            .frame(height: selectedOption == .location ? __designTimeInteger("#10098.[2].[3].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value.then", fallback: 120) : __designTimeInteger("#10098.[2].[3].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value.else", fallback: 64))
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#10098.[2].[3].property.[0].[0].arg[0].value.[1].modifier[3].arg[0].value.arg[0].value", fallback: 12)))
            .padding()
            .shadow(radius: __designTimeInteger("#10098.[2].[3].property.[0].[0].arg[0].value.[1].modifier[5].arg[0].value", fallback: 10))
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .location }
            }
            
            //date selection view
            VStack{
                if selectedOption == .dates{
                    Text(__designTimeString("#10098.[2].[3].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[0].[0].arg[0].value", fallback: "show expanded view"))
                }else{
                    CollapsedPickerView(title: __designTimeString("#10098.[2].[3].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[1].[0].arg[0].value", fallback: "When"), description: __designTimeString("#10098.[2].[3].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[1].[0].arg[1].value", fallback: "Add dates"))
                }
            }
            .padding()
            .frame(height: selectedOption == .dates ? __designTimeInteger("#10098.[2].[3].property.[0].[0].arg[0].value.[2].modifier[1].arg[0].value.then", fallback: 120) : __designTimeInteger("#10098.[2].[3].property.[0].[0].arg[0].value.[2].modifier[1].arg[0].value.else", fallback: 64))
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#10098.[2].[3].property.[0].[0].arg[0].value.[2].modifier[3].arg[0].value.arg[0].value", fallback: 12)))
            .padding()
            .shadow(radius: __designTimeInteger("#10098.[2].[3].property.[0].[0].arg[0].value.[2].modifier[5].arg[0].value", fallback: 10))
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .dates }
            }
            
            //num guests view
            VStack{
                if selectedOption == .guests{
                    Text(__designTimeString("#10098.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[0].[0].[0].arg[0].value", fallback: "show expanded view"))
                }else{
                    CollapsedPickerView(title: __designTimeString("#10098.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[0].[1].[0].arg[0].value", fallback: "Who"), description: __designTimeString("#10098.[2].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[0].[1].[0].arg[1].value", fallback: "Add guests"))
                }
            }
            .padding()
            .frame(height: selectedOption == .guests ? __designTimeInteger("#10098.[2].[3].property.[0].[0].arg[0].value.[3].modifier[1].arg[0].value.then", fallback: 120) : __designTimeInteger("#10098.[2].[3].property.[0].[0].arg[0].value.[3].modifier[1].arg[0].value.else", fallback: 64))
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#10098.[2].[3].property.[0].[0].arg[0].value.[3].modifier[3].arg[0].value.arg[0].value", fallback: 12)))
            .padding()
            .shadow(radius: __designTimeInteger("#10098.[2].[3].property.[0].[0].arg[0].value.[3].modifier[5].arg[0].value", fallback: 10))
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .guests}
            }
        }
        Spacer()
    
#sourceLocation()
    }
}

import enum AirbnbClone.DestinationSearchOptions
import struct AirbnbClone.DestinationSearchView
import struct AirbnbClone.CollapsedPickerView
#Preview {
    DestinationSearchView(show: .constant(false))
}



