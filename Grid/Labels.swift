//
//  Labels.swift
//  Grid
//
//  Created by Ayhan on 5.11.2022.
//

import SwiftUI

struct Labels: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 8.0){
                Label(text: "Design")
                Label(text: "Code")
                Label(text: "UI")
                Label(text: "Dog")
                Label(text: "Travel")
                Label(text: "Food")
            }
            .padding(.horizontal, 16)
            .frame(width: .infinity, height: 38)
            
        }
    }
}

struct Labels_Previews: PreviewProvider {
    static var previews: some View {
        Labels()
    }
}
