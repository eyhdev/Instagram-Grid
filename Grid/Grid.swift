//
//  Grid.swift
//  Grid
//
//  Created by Ayhan on 5.11.2022.
//

import SwiftUI

struct Grid: View {
    @State private var showModal = true
    @State private var selectedImage: String = ""
    
    var images: [String] = ["profile1","profile2","profile3","profile4","profile5","profile6","profile1","profile2","profile3","profile4","profile5","profile6","profile1","profile2","profile3","profile4","profile5","profile6","profile1","profile2","profile3","profile4","profile5","profile6","profile1","profile2","profile3","profile4","profile5","profile6","profile1","profile2","profile3","profile4","profile5","profile6","profile1","profile2","profile3","profile4","profile5","profile6","profile1","profile2","profile3","profile4","profile5","profile6","profile1","profile2","profile3","profile4","profile5","profile6",]
    
    var columnGrid: [GridItem] = [GridItem(.flexible(),spacing: 1), GridItem(.flexible(), spacing: 1), GridItem(.flexible(), spacing: 1)]
    
    var body: some View {
        LazyVGrid(columns: columnGrid, spacing: 1) {
                    ForEach(images.indices, id: \.self) { index in
                        Image(images[index])
                            .resizable()
                            .scaledToFill()
                            .frame(width: (UIScreen.main.bounds.width / 3) - 1 , height: (UIScreen.main.bounds.width / 3) - 1)
                            .clipped()
                            .onTapGesture {
                                selectedImage = images[index]
                                showModal = true
                            }
                    }
                }
            
            .fullScreenCover(isPresented: $showModal) {
                VStack {
                    HStack {
                        Spacer()
                        Button(action: { showModal = false }) {
                           Image(systemName: "xmark.circle.fill")
                                .padding()
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                                
                             
                        }
                    }
                    PostHeader()
                    Image(selectedImage)
                        .resizable()
                        .scaledToFit()
                    PostContent()
                        .padding()
                 
                }
                
                .padding(.bottom, 200)
                
            }
            
            
        }
    }

struct PostHeader: View {
    var body: some View {
       HStack {
                HStack(spacing: 9.0) {
                    Image("profile4")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .cornerRadius(50)
                    
                    Text("Adam")
                        .font(.callout)
                        .fontWeight(.bold)
                }
                
                Spacer()
                
                Image("more")
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 8)
        }
}
struct PostContent: View {
    var body: some View {
        VStack {
            HStack(spacing: 10.0) {
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                })
                Button(action: {}, label: {
                    Image("comment")
                        .font(.title3)
                        .foregroundColor(.black)
                })
                Button(action: {}, label: {
                    Image("share")
                        .font(.title3)
                        .foregroundColor(.black)
                })
            
                Spacer()
                Button(action: {}, label: {
                    Image("bookmark")
                        .font(.title3)
                        .foregroundColor(.black)
                })

            }
            
        }
        
    }
        }
    
struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Grid()
    }
}
