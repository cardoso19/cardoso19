//
//  ProfileApp.swift
//  Profile
//
//  Created by Matheus Kuhn on 12.05.23.
//

import SwiftUI

@main
struct ProfileApp: App {
    
    static let infoText = """
    Over 9 years enjoying iOS. My current personal project is to learn about Unreal Engine. Passionated about the world of videogames.
    """
    
    let sections = [
        Section(title: "Hello, I am Matheus",
                items: [
                    Item(icon: "🇧🇷",
                         isIconEmoji: true,
                         iconColor: .yellow,
                         color: .green,
                         text: "Brazilian",
                         textColor: .white,
                         font: .headline),
                    Item(icon: "laptopcomputer",
                         isIconEmoji: false,
                         iconColor: .white,
                         color: .gray,
                         text: "iOS Software Engineer",
                         textColor: .white,
                         font: .headline),
                    Item(icon: "car.fill",
                         isIconEmoji: false,
                         iconColor: .white,
                         color: .red,
                         text: "Working at Free Now",
                         textColor: .white,
                         font: .headline),
                    Item(icon: "info.square.fill", 
                         isIconEmoji: false,
                         iconColor: .white,
                         color: .blue,
                         text: Self.infoText,
                         textColor: .white,
                         font: .headline)
                ]),
        Section(title: "Languages Stack",
                items: [
                    Item(icon: "swift", 
                         isIconEmoji: false,
                         iconColor: .white,
                         color: .orange,
                         text: "Swift",
                         textColor: .white,
                         font: .headline),
                    Item(icon: "lifepreserver.fill",
                         isIconEmoji: false,
                         iconColor: .white,
                         color: .gray,
                         text: "Objective-C",
                         textColor: .white,
                         font: .headline),
                    Item(icon: "✚",
                         isIconEmoji: true,
                         iconColor: .yellow,
                         color: .blue,
                         text: "Python",
                         textColor: .white,
                         font: .headline)
                ]),
        Section(title: "Hobbies",
                items: [
                    Item(icon: "gamecontroller.fill",
                         isIconEmoji: false,
                         iconColor: .white,
                         color: .purple,
                         text: "Video Games",
                         textColor: .white,
                         font: .headline),
                    Item(icon: "text.bubble.fill",
                         isIconEmoji: false,
                         iconColor: .white,
                         color: .blue,
                         text: "Learn foreign languages",
                         textColor: .white,
                         font: .headline),
                    Item(icon: "pencil", 
                         isIconEmoji: false,
                         iconColor: .white,
                         color: .black,
                         text: "Drawing",
                         textColor: .white,
                         font: .headline),
                    Item(icon: "👾",
                         isIconEmoji: true,
                         iconColor: .black,
                         color: .red,
                         text: "Develop Games",
                         textColor: .white,
                         font: .headline),
                ]),
        Section(title: "Languages",
                items: [
                    Item(icon: "🇧🇷",
                         isIconEmoji: true,
                         iconColor: .yellow,
                         color: .green,
                         text: "Portuguese (Native)",
                         textColor: .white,
                         font: .headline),
                    Item(icon: "🇺🇸",
                         isIconEmoji: true,
                         iconColor: .white,
                         color: .blue,
                         text: "English (Advanced)",
                         textColor: .white,
                         font: .headline),
                    Item(icon: "🇪🇸",
                         isIconEmoji: true,
                         iconColor: .orange,
                         color: .red,
                         text: "Spanish (Basic)",
                         textColor: .white,
                         font: .headline),
                    Item(icon: "🇩🇪",
                         isIconEmoji: true,
                         iconColor: .red,
                         color: .black,
                         text: "German (Basic)",
                         textColor: .white,
                         font: .headline),
                    Item(icon: "🇯🇵",
                         isIconEmoji: true,
                         iconColor: .red,
                         color: .white,
                         text: "Japanese (Basic)",
                         textColor: .black,
                         font: .headline)
                ]),
    ]
    
    @State private var selected: Int = 0
    
    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                List(sections, selection: $selected) { section in
                    NavigationLink(section.title) {
                        ContentView(title: section.title, items: section.items)
                    }
                }.navigationSplitViewColumnWidth(BaseDimension.times(20))
            } detail: {
                ContentView(title: sections[selected].title, items: sections[selected].items)
            }.navigationTitle("Hello World")
        }.windowResizability(.contentSize)
    }
}
