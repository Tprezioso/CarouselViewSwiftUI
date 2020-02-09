//
//  ContentView.swift
//  CarouselViewSwiftUI
//
//  Created by Thomas Prezioso on 2/9/20.
//  Copyright © 2020 Thomas Prezioso. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            // Comment this section below to get the screen shot for first step
            GeometryReader { geometry in
                ImageCarouselView(numberOfImages: 3) {
                    Image("husky-1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                    Image("husky-2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                    Image("husky-3")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                }
            }.frame(height: 300, alignment: .center)
            // Uncomment this section above for 3rd step
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image("swiftTom")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 55, height: 55)
                        .clipShape(Circle())
                        .shadow(radius: 4)
                    
                    VStack(alignment: .leading) {
                        Text("Written By")
                            .foregroundColor(.gray)
                        Text("Thomas Prezioso Jr")
                    }
                }
                
                Text("Feb 10 2020")
                    .foregroundColor(.gray)
                
                Text("How to Make a Image Carousel in SwiftUI")
                
                Text(loremIpsum)
                    .lineLimit(nil)
            }
            .padding(.horizontal)
            .padding(.top, 16.0)
        }.edgesIgnoringSafeArea(.all)
    }
}
let loremIpsum = """
Lorem ipsum dolor sit amet consectetur adipiscing elit donec, gravida commodo hac non mattis augue duis vitae inceptos, laoreet taciti at vehicula cum arcu dictum. Cras netus vivamus sociis pulvinar est erat, quisque imperdiet velit a justo maecenas, pretium gravida ut himenaeos nam. Tellus quis libero sociis class nec hendrerit, id proin facilisis praesent bibendum vehicula tristique, fringilla augue vitae primis turpis.
"""

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
