//
//  DestinationSearchView.swift
//  AirbnbClone
//
//  Created by Nisanur Korkmaz on 13/12/2023.
//

import SwiftUI

enum DestinationSearchOptions{
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show : Bool
    @State private var destination = ""
    
    @State private var locationSelected = false
    @State private var datesSelected = false
    @State private var guestsSelected = false
    
    var body: some View {
        VStack{
            Button{
                withAnimation(.snappy){
                    show.toggle()
                }
            }label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            
            VStack(alignment : .leading){
                Text("Where to ?")
                    .font(.title2)
                    .fontWeight(.semibold)
                HStack{
                    Image(systemName: "magnifyingglass")
                        .imageScale(.small)
                    TextField("Search Destinations", text: $destination)
                        .font(.subheadline)
                }
                .frame(height: 44)
                .padding(.horizontal)
                .overlay{
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1.0)
                        .foregroundStyle(Color(.systemGray4))
                }
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            
            //date selection view
            CollapsedPickerView(title: "When", description: "Add dates")
            
            //num guests view
            CollapsedPickerView(title: "Who", description: "Add guests")
            
        }
        Spacer()
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsedPickerView: View {
    let title : String
    let description : String
    var body: some View {
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
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .shadow(radius: 10)
    }
}
