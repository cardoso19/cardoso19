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
        HStack {
            VStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .foregroundColor(.red)
                        .fontWeight(.bold)
                        .font(.largeTitle)
                    VStack(alignment: .leading) {
                        ForEach(items) { item in
                            ListItemView(item: item)
                            if item.id != items.last?.id {
                                Divider()
                            }
                        }
                    }
                }.padding(BaseDimension.multipliedBy(3))
                Spacer()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(title: "Title",
                    items: [
                        Item(icon: "swift",
                             iconColor: .white,
                             color: .red,
                             text: "Swift")
        ])
    }
}
