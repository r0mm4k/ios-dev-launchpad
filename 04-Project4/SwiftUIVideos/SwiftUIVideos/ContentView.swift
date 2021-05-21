//
//  ContentView.swift
//  SwiftUIVideos
//
//  Created by Роман Макаров on 21.05.21.
//

import SwiftUI

struct ContentView: View {
    
    var videos: [Video] = []
    
    var body: some View {
        NavigationView {
            List(videos) { video in
                Image(video.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 90)
                    .cornerRadius(8)
                    .padding(.trailing, 16)
                
                VStack(alignment: .leading) {
                    Text(video.title)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(0.75)
                        .padding(.bottom, 5)
                    Text(video.uploadDate)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            .navigationBarTitle(Text("Sean's Videos"))
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(videos: VideoList.topTwelve)
    }
}
