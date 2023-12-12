@_private(sourceFile: "ListingDetailView.swift") import AirbnbClone
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI
import MapKit

extension ListingDetailView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nisanurkorkmaz/Desktop/AirbnbClone/AirbnbClone/Core/Listings/ListingDetailView.swift", line: 15)
        ScrollView{
            ZStack(alignment : .topLeading){
                ListingImageCarouselView()
                    .frame(height : __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 320))
                
                Button{
                    dismiss()
                } label: {
                    Image(systemName: __designTimeString("#27204.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].arg[0].value", fallback: "chevron.left"))
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width : __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].modifier[1].arg[0].value.[0].modifier[1].arg[0].value", fallback: 32), height: __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].modifier[1].arg[0].value.[0].modifier[1].arg[1].value", fallback: 32))
                        }
                        .padding(__designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].modifier[2].arg[0].value", fallback: 32))
                }
            }
            
            VStack(alignment: .leading, spacing: __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[1].arg[1].value", fallback: 8)){
                Text(__designTimeString("#27204.[2].[1].property.[0].[0].arg[0].value.[1].arg[2].value.[0].arg[0].value", fallback: "Miami Villa"))
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading){
                    HStack(spacing : __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[1].arg[2].value.[1].arg[1].value.[0].arg[0].value", fallback: 2)){
                        Image(systemName: __designTimeString("#27204.[2].[1].property.[0].[0].arg[0].value.[1].arg[2].value.[1].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "star.fill"))
                            .foregroundStyle(.black)
                        Text(__designTimeString("#27204.[2].[1].property.[0].[0].arg[0].value.[1].arg[2].value.[1].arg[1].value.[0].arg[1].value.[1].arg[0].value", fallback: "4.86 - "))
                            .foregroundStyle(.black)
                        
                        Text(__designTimeString("#27204.[2].[1].property.[0].[0].arg[0].value.[1].arg[2].value.[1].arg[1].value.[0].arg[1].value.[2].arg[0].value", fallback: "28 reviews"))
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text(__designTimeString("#27204.[2].[1].property.[0].[0].arg[0].value.[1].arg[2].value.[1].arg[1].value.[1].arg[0].value", fallback: "Miami, Florida"))
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            //host info view
            HStack{
                VStack(alignment : .leading, spacing: __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[1].value", fallback: 4)){
                    Text(__designTimeString("#27204.[2].[1].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[2].value.[0].arg[0].value", fallback: "Entire villa hosted by John Smith"))
                        .font(.headline)
                        .frame(width: __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[2].value.[0].modifier[1].arg[0].value", fallback: 250), alignment: .leading)
                    
                    Text(__designTimeString("#27204.[2].[1].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[2].value.[1].arg[0].value", fallback: "4 Guest - 4 bedrooms - 4 beds - 3 baths"))
                        .font(.caption)
                }
                .frame(width: __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[0].value", fallback: 300), alignment: .leading)
                Spacer()
                
                Image(__designTimeString("#27204.[2].[1].property.[0].[0].arg[0].value.[3].arg[0].value.[2].arg[0].value", fallback: "male-pp"))
                    .resizable()
                    .scaledToFill()
                    .frame(width: __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[3].arg[0].value.[2].modifier[2].arg[0].value", fallback: 60), height: __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[3].arg[0].value.[2].modifier[2].arg[1].value", fallback: 60))
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            .padding()
            
            Divider()
            
            //listing features
            VStack(alignment : .leading, spacing: __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[5].arg[1].value", fallback: 16)){
                ForEach(__designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[5].arg[2].value.[0].arg[0].value.[0]", fallback: 0) ..< __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[5].arg[2].value.[0].arg[0].value.[1]", fallback: 2)) { feature in
                    HStack(spacing : __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[5].arg[2].value.[0].arg[1].value.[0].arg[0].value", fallback: 12)){
                        Image(systemName: __designTimeString("#27204.[2].[1].property.[0].[0].arg[0].value.[5].arg[2].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "medal"))
                        
                        VStack(alignment: .leading){
                            Text(__designTimeString("#27204.[2].[1].property.[0].[0].arg[0].value.[5].arg[2].value.[0].arg[1].value.[0].arg[1].value.[1].arg[1].value.[0].arg[0].value", fallback: "SuperHost"))
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text(__designTimeString("#27204.[2].[1].property.[0].[0].arg[0].value.[5].arg[2].value.[0].arg[1].value.[0].arg[1].value.[1].arg[1].value.[1].arg[0].value", fallback: "Superhosts are experienced, highly rated hosts who are commited to providing great stars for guests. "))
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
            VStack(alignment: .leading, spacing: __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[7].arg[1].value", fallback: 16)){
                Text(__designTimeString("#27204.[2].[1].property.[0].[0].arg[0].value.[7].arg[2].value.[0].arg[0].value", fallback: "Where you'll sleep"))
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: __designTimeBoolean("#27204.[2].[1].property.[0].[0].arg[0].value.[7].arg[2].value.[1].arg[1].value", fallback: false)){
                    HStack(spacing : __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[7].arg[2].value.[1].arg[2].value.[0].arg[0].value", fallback: 16)){
                        ForEach(__designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[7].arg[2].value.[1].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0]", fallback: 1) ..< __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[7].arg[2].value.[1].arg[2].value.[0].arg[1].value.[0].arg[0].value.[1]", fallback: 5)){ bedroom in
                            VStack{
                                Image(systemName: __designTimeString("#27204.[2].[1].property.[0].[0].arg[0].value.[7].arg[2].value.[1].arg[2].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "bed.double"))
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[7].arg[2].value.[1].arg[2].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 132), height: __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[7].arg[2].value.[1].arg[2].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[1].value", fallback: 100))
                            .overlay{
                                RoundedRectangle(cornerRadius: __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[7].arg[2].value.[1].arg[2].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.[0].arg[0].value", fallback: 12))
                                    .stroke(lineWidth: __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[7].arg[2].value.[1].arg[2].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: 1))
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
            VStack(alignment: .leading, spacing : __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[9].arg[1].value", fallback: 16)){
                Text(__designTimeString("#27204.[2].[1].property.[0].[0].arg[0].value.[9].arg[2].value.[0].arg[0].value", fallback: "What this place offers"))
                    .font(.headline)
                ForEach(__designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[9].arg[2].value.[1].arg[0].value.[0]", fallback: 0) ..< __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[9].arg[2].value.[1].arg[0].value.[1]", fallback: 5)){ feature in
                    HStack{
                        Image(systemName: __designTimeString("#27204.[2].[1].property.[0].[0].arg[0].value.[9].arg[2].value.[1].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "wifi"))
                            .frame(width : __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[9].arg[2].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 32))
                        Text(__designTimeString("#27204.[2].[1].property.[0].[0].arg[0].value.[9].arg[2].value.[1].arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "Wifi"))
                            .font(.footnote)
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[11].arg[1].value", fallback: 16)){
                Text(__designTimeString("#27204.[2].[1].property.[0].[0].arg[0].value.[11].arg[2].value.[0].arg[0].value", fallback: "Where you will be"))
                    .font(.headline)
                
                Map()
                    .frame(height : __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[11].arg[2].value.[1].modifier[0].arg[0].value", fallback: 200))
                    .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#27204.[2].[1].property.[0].[0].arg[0].value.[11].arg[2].value.[1].modifier[1].arg[0].value.arg[0].value", fallback: 12)))
            }
            .padding()
        }
        .ignoresSafeArea()
        .padding(.bottom, __designTimeInteger("#27204.[2].[1].property.[0].[0].modifier[1].arg[1].value", fallback: 64))
        .overlay(alignment : .bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                
                HStack{
                    VStack(alignment : .leading){
                        Text(__designTimeString("#27204.[2].[1].property.[0].[0].modifier[2].arg[1].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "$5000"))
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text(__designTimeString("#27204.[2].[1].property.[0].[0].modifier[2].arg[1].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "Total before taxes"))
                            .font(.footnote)
                        Text(__designTimeString("#27204.[2].[1].property.[0].[0].modifier[2].arg[1].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[2].arg[0].value", fallback: "Oct 15-20"))
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Spacer()
                    
                    Button{
                        
                    }label: {
                        Text(__designTimeString("#27204.[2].[1].property.[0].[0].modifier[2].arg[1].value.[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "Reserve"))
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width : __designTimeInteger("#27204.[2].[1].property.[0].[0].modifier[2].arg[1].value.[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].modifier[3].arg[0].value", fallback: 140), height : __designTimeInteger("#27204.[2].[1].property.[0].[0].modifier[2].arg[1].value.[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].modifier[3].arg[1].value", fallback: 40))
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#27204.[2].[1].property.[0].[0].modifier[2].arg[1].value.[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].modifier[5].arg[0].value.arg[0].value", fallback: 8)))
                    }
                }
                .padding(.horizontal, __designTimeInteger("#27204.[2].[1].property.[0].[0].modifier[2].arg[1].value.[0].arg[0].value.[1].modifier[0].arg[1].value", fallback: 32))
            }
            .background(.white)
        }
        
    
#sourceLocation()
    }
}

import struct AirbnbClone.ListingDetailView
#Preview {
    ListingDetailView()
}



