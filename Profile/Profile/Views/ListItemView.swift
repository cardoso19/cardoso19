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
        cardView
            .padding(.vertical, BaseDimension.times(1))
            .padding(.horizontal, BaseDimension.times(2))
    }
    
    private var emojiIcon: some View {
        Text(item.icon)
            .font(.system(size: BaseDimension.times(10)))
            .foregroundStyle(item.iconColor)
            .frame(width: BaseDimension.times(10), height: BaseDimension.times(10))
            .padding(.bottom, -BaseDimension.times(4))
            .padding(.trailing, BaseDimension.times(10))
    }
    
    private var icon: some View {
        Image(systemName: item.icon)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundStyle(item.iconColor)
            .frame(width: BaseDimension.times(10),
                   height: BaseDimension.times(10))
            .padding(.bottom, -BaseDimension.times(4))
            .padding(.trailing, BaseDimension.times(10))
    }
    
    private var text: some View {
        VStack(spacing: .zero) {
            Text(item.text)
                .font(item.font)
                .foregroundStyle(item.textColor)
                .padding(BaseDimension.times(2))
            Spacer()
        }
    }
    
    private var cardView: some View {
        HStack(spacing: .zero) {
            text
            Spacer(minLength: BaseDimension.times(1))
            if item.isIconEmoji {
                emojiIcon
            } else {
                icon
            }
        }
        .frame(height: BaseDimension.times(10))
        .frame(maxWidth: .infinity)
        .background(item.color)
        .clipShape(RoundedRectangle(cornerRadius: BaseDimension.times(3)))
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(item: Item(icon: "swift", 
                                isIconEmoji: false,
                                iconColor: .white,
                                color: .red,
                                text: "Swift", 
                                textColor: .white,
                                font: .headline))
    }
}
