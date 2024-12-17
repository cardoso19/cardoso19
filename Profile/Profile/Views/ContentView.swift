//
//  ContentView.swift
//  Profile
//
//  Created by Matheus Kuhn on 12.05.23.
//

import SwiftUI

struct ContentView: View {
    let title: String
    let items: [Item]
    
    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            titleView
            list
            Spacer()
        }
    }
    
    private var titleView: some View {
        Text(title)
            .foregroundColor(.white)
            .fontWeight(.bold)
            .font(.largeTitle)
            .padding(.horizontal, BaseDimension.times(2))
            .padding(.top, BaseDimension.times(2))
            .padding(.bottom, BaseDimension.times(1))
    }
    
    private var list: some View {
        ForEach(items) { item in
            ListItemView(item: item)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(title: "Title",
                    items: [
                        Item(icon: "swift",
                             isIconEmoji: false,
                             iconColor: .white,
                             color: .red,
                             text: "Swift",
                             textColor: .white,
                             font: .headline)
        ])
    }
}
