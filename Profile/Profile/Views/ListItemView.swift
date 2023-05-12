//
//  ListItemView.swift
//  Profile
//
//  Created by Matheus Kuhn on 12.05.23.
//

import SwiftUI

struct ListItemView: View {

    var item: Item
    
    var body: some View {
        HStack(alignment: .top,
               spacing: BaseDimension.multipliedBy(3)) {
            Image(systemName: item.icon)
                .foregroundColor(item.iconColor)
                .frame(width: BaseDimension.multipliedBy(4),
                       height: BaseDimension.multipliedBy(4))
                .background(item.color)
                .cornerRadius(BaseDimension.multipliedBy(1))
            Text(item.text)
                .font(.title3)
                .padding(EdgeInsets(top: BaseDimension.multipliedBy(1),
                                    leading: .zero,
                                    bottom: .zero,
                                    trailing: .zero))
        }
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(item: Item(icon: "swift",
                                iconColor: .white,
                                color: .red,
                                text: "Swift"))
    }
}
