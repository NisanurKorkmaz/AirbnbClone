//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by Nisanur Korkmaz on 12/12/2023.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView{
            ZStack(alignment : .topLeading){
                ListingImageCarouselView()
                    .frame(height : 320)
                
                Button{
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width : 32, height: 32)
                        }
                        .padding(32)
                }
            }
            
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
            
            //bedrooms view
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing : 16){
                        ForEach(1 ..< 5){ bedroom in
                            VStack{
                                Image(systemName: "bed.double")
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            //listing amenities
            VStack(alignment: .leading, spacing : 16){
                Text("What this place offers")
                    .font(.headline)
                ForEach(0 ..< 5){ feature in
                    HStack{
                        Image(systemName: "wifi")
                            .frame(width : 32)
                        Text("Wifi")
                            .font(.footnote)
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                Text("Where you will be")
                    .font(.headline)
                
                Map()
                    .frame(height : 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment : .bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                
                HStack{
                    VStack(alignment : .leading){
                        Text("$5000")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                            .font(.footnote)
                        Text("Oct 15-20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Spacer()
                    
                    Button{
                        
                    }label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width : 140, height : 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
        
    }
}

#Preview {
    ListingDetailView()
}
