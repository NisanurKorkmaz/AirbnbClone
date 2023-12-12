//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by Nisanur Korkmaz on 12/12/2023.
//

import SwiftUI

struct ListingDetailView: View {
    
    
    var body: some View {
        ScrollView{
            ListingImageCarouselView()
                .frame(height : 320)
            
            VStack(alignment: .leading, spacing: 8){
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading){
                    HStack(spacing : 2){
                        Image(systemName: "star.fill")
                            .foregroundStyle(.black)
                        Text("4.86 - ")
                            .foregroundStyle(.black)
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text("Miami, Florida")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            //host info view
            HStack{
                VStack(alignment : .leading, spacing: 4){
                    Text("Entire villa hosted by John Smith")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    Text("4 Guest - 4 bedrooms - 4 beds - 3 baths")
                        .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                Spacer()
                
                Image("male-pp")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            .padding()
            
            Divider()
            
            //listing features
            VStack(alignment : .leading, spacing: 16){
                ForEach(0 ..< 2) { feature in
                    HStack(spacing : 12){
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading){
                            Text("SuperHost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhosts are experienced, highly rated hosts who are commited to providing great stars for guests. ")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                    
                }
            }
            //            .frame(maxWidth : .infinity, alignment : .leading) fait la meme chose que le spacer en haut
            .padding()
            
            Divider()
        }
    }
}

#Preview {
    ListingDetailView()
}
