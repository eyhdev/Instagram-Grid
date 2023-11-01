//
//  SearchView.swift
//  Grid
//
//  Created by Ayhan on 5.11.2022.
//

import SwiftUI

struct SearchView: View {
    @State var text : String
    var body: some View {
        VStack(spacing: 10.0){
            SearchInput(text: text)
                .padding(.horizontal, 16)
            Labels()
            
            ScrollView(.vertical, showsIndicators: false){
                Grid()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(text: "")
    }
}
