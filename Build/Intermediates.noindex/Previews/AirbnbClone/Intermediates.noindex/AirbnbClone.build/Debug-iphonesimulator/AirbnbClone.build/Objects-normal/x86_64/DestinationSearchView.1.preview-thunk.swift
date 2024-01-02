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
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/Explore/View/DestinationSearchView.swift", line: 162)
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
    
#sourceLocation()
    }
}

extension CollapsibleDestinationViewModifier {
    @_dynamicReplacement(for: body(content:)) private func __preview__body(content: Content) -> some View {
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/Explore/View/DestinationSearchView.swift", line: 149)
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#4964.[4].[0].[0].modifier[2].arg[0].value.arg[0].value", fallback: 12)))
            .padding()
            .shadow(radius: __designTimeInteger("#4964.[4].[0].[0].modifier[4].arg[0].value", fallback: 10))
    
#sourceLocation()
    }
}

extension DestinationSearchView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/Explore/View/DestinationSearchView.swift", line: 27)
        VStack{
            HStack{
                Button{
                    withAnimation(.snappy){
                        viewModel.updateListingsForLocation()
                        show.toggle()
                    }
                }label: {
                    Image(systemName: __designTimeString("#4964.[2].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "xmark.circle"))
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                Spacer()
                
                if !viewModel.searchLocation.isEmpty {
                    Button(__designTimeString("#4964.[2].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].[0].[0].arg[0].value", fallback: "Clear")){
                        viewModel.searchLocation = __designTimeString("#4964.[2].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].[0].[0].arg[1].value.[0].[0]", fallback: "")
                        viewModel.updateListingsForLocation()
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }}
            .padding()
            
            VStack(alignment : .leading){
                if selectedOption == .location{
                    Text(__designTimeString("#4964.[2].[7].property.[0].[0].arg[0].value.[1].arg[1].value.[0].[0].[0].arg[0].value", fallback: "Where to ?"))
                        .font(.title2)
                        .fontWeight(.semibold)
                    HStack{
                        Image(systemName: __designTimeString("#4964.[2].[7].property.[0].[0].arg[0].value.[1].arg[1].value.[0].[0].[1].arg[0].value.[0].arg[0].value", fallback: "magnifyingglass"))
                            .imageScale(.small)
                        TextField(__designTimeString("#4964.[2].[7].property.[0].[0].arg[0].value.[1].arg[1].value.[0].[0].[1].arg[0].value.[1].arg[0].value", fallback: "Search Destinations"), text: $viewModel.searchLocation)
                            .font(.subheadline)
                            .onSubmit {
                                viewModel.updateListingsForLocation()
                                show.toggle()
                                
                            }
                    }
                    .frame(height: __designTimeInteger("#4964.[2].[7].property.[0].[0].arg[0].value.[1].arg[1].value.[0].[0].[1].modifier[0].arg[0].value", fallback: 44))
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius: __designTimeInteger("#4964.[2].[7].property.[0].[0].arg[0].value.[1].arg[1].value.[0].[0].[1].modifier[2].arg[0].value.[0].arg[0].value", fallback: 8))
                            .stroke(lineWidth: __designTimeFloat("#4964.[2].[7].property.[0].[0].arg[0].value.[1].arg[1].value.[0].[0].[1].modifier[2].arg[0].value.[0].modifier[0].arg[0].value", fallback: 1.0))
                            .foregroundStyle(Color(.systemGray4))
                    }
                }else{
                    CollapsedPickerView(title: __designTimeString("#4964.[2].[7].property.[0].[0].arg[0].value.[1].arg[1].value.[0].[1].[0].arg[0].value", fallback: "Where"), description: __designTimeString("#4964.[2].[7].property.[0].[0].arg[0].value.[1].arg[1].value.[0].[1].[0].arg[1].value", fallback: "Add destination"))
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .location ? __designTimeInteger("#4964.[2].[7].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value.then", fallback: 120) : __designTimeInteger("#4964.[2].[7].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value.else", fallback: 64))
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .location }
            }
            
            //date selection view
            VStack(alignment : .leading){
                if selectedOption == .dates{
                    Text(__designTimeString("#4964.[2].[7].property.[0].[0].arg[0].value.[2].arg[1].value.[0].[0].[0].arg[0].value", fallback: "When is your trip ? "))
                        .font(.title2)
                        .fontWeight(.semibold)
                    VStack{
                        DatePicker(__designTimeString("#4964.[2].[7].property.[0].[0].arg[0].value.[2].arg[1].value.[0].[0].[1].arg[0].value.[0].arg[0].value", fallback: "From"), selection: $startdate, displayedComponents: .date)
                        
                        Divider()
                        
                        DatePicker(__designTimeString("#4964.[2].[7].property.[0].[0].arg[0].value.[2].arg[1].value.[0].[0].[1].arg[0].value.[2].arg[0].value", fallback: "To"), selection: $endDate, displayedComponents: .date)
                        
                    }
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                }else{
                    CollapsedPickerView(title: __designTimeString("#4964.[2].[7].property.[0].[0].arg[0].value.[2].arg[1].value.[0].[1].[0].arg[0].value", fallback: "When"), description: __designTimeString("#4964.[2].[7].property.[0].[0].arg[0].value.[2].arg[1].value.[0].[1].[0].arg[1].value", fallback: "Add dates"))
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .dates ? __designTimeInteger("#4964.[2].[7].property.[0].[0].arg[0].value.[2].modifier[1].arg[0].value.then", fallback: 180) : __designTimeInteger("#4964.[2].[7].property.[0].[0].arg[0].value.[2].modifier[1].arg[0].value.else", fallback: 64))
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .dates }
            }
            
            //num guests view
            VStack(alignment : .leading){
                if selectedOption == .guests{
                    Text(__designTimeString("#4964.[2].[7].property.[0].[0].arg[0].value.[3].arg[1].value.[0].[0].[0].arg[0].value", fallback: "Who's coming ? "))
                        .font(.title2)
                        .fontWeight(.semibold)
                    Stepper{
                        Text(" \(numGuests) Adults")
                    } onIncrement: {
                        numGuests += __designTimeInteger("#4964.[2].[7].property.[0].[0].arg[0].value.[3].arg[1].value.[0].[0].[1].arg[1].value.[0].[0]", fallback: 1)
                    } onDecrement: {
                        guard numGuests > 0 else { return }
                        numGuests -= __designTimeInteger("#4964.[2].[7].property.[0].[0].arg[0].value.[3].arg[1].value.[0].[0].[1].arg[2].value.[1].[0]", fallback: 1)
                    }
                }else{
                    CollapsedPickerView(title: __designTimeString("#4964.[2].[7].property.[0].[0].arg[0].value.[3].arg[1].value.[0].[1].[0].arg[0].value", fallback: "Who"), description: __designTimeString("#4964.[2].[7].property.[0].[0].arg[0].value.[3].arg[1].value.[0].[1].[0].arg[1].value", fallback: "Add guests"))
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .guests ? __designTimeInteger("#4964.[2].[7].property.[0].[0].arg[0].value.[3].modifier[1].arg[0].value.then", fallback: 120) : __designTimeInteger("#4964.[2].[7].property.[0].[0].arg[0].value.[3].modifier[1].arg[0].value.else", fallback: 64))
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
import struct AirbnbClone.CollapsibleDestinationViewModifier
import struct AirbnbClone.CollapsedPickerView
#Preview {
    DestinationSearchView(show: .constant(false), viewModel: ExploreViewModel(service: ExploreService()))
}



