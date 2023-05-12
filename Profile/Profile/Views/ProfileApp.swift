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
    Over 7 years working with iOS, my first contact with iOS was during the Apple Developer Academy, since then I developed a love by the plataform and Swift ❤️. Worked with multiple companies, most of them on the financial area. Still trying to learn how the things work with SwiftUI.
    Besides coding mobile applications, I also like to code games during free time. I had three games published on the App Store. As a requirement during the game development I learned how to draw pixel art, and started to like more games with that art style 👾.
    """
    
    let sections = [
        Section(title: "Hello, I am Matheus",
                items: [
                    Item(icon: "circle.fill", iconColor: .yellow, color: .green, text: "Brazilian"),
                    Item(icon: "laptopcomputer", iconColor: .white, color: .gray, text: "iOS Software Engineer"),
                    Item(icon: "car.fill", iconColor: .white, color: .red, text: "Working on Free Now"),
                    Item(icon: "info.square.fill", iconColor: .white, color: .blue, text: Self.infoText)
                ]),
        Section(title: "Languages Stack",
                items: [
                    Item(icon: "swift", iconColor: .white, color: .red, text: "Swift"),
                    Item(icon: "lifepreserver.fill", iconColor: .white, color: .gray, text: "Obj-C")
                ]),
        Section(title: "Hobbies",
                items: [
                    Item(icon: "gamecontroller.fill", iconColor: .white, color: .purple, text: "Video Games"),
                    Item(icon: "network", iconColor: .white, color: .blue, text: "Learn foreign languages"),
                    Item(icon: "pencil.line", iconColor: .white, color: .black, text: "Drawing"),
                    Item(icon: "apps.iphone", iconColor: .black, color: .red, text: "Develop Games"),
                ]),
        Section(title: "Languages",
                items: [
                    Item(icon: "captions.bubble.fill", iconColor: .yellow, color: .green, text: "🇧🇷 Portuguese (Native)"),
                    Item(icon: "captions.bubble.fill", iconColor: .white, color: .blue, text: "🇺🇸 English (Advanced)"),
                    Item(icon: "captions.bubble.fill", iconColor: .orange, color: .red, text: "🇪🇸 Spanish (Basic)"),
                    Item(icon: "captions.bubble.fill", iconColor: .red, color: .black, text: "🇩🇪 German (Basic)"),
                    Item(icon: "captions.bubble.fill", iconColor: .red, color: .white, text: "🇯🇵 Japanese (Basic)")
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
                }.navigationSplitViewColumnWidth(BaseDimension.multipliedBy(19))
            } detail: {
                ContentView(title: sections[selected].title, items: sections[selected].items)
            }.navigationTitle("Hello World")
        }.windowResizability(.contentSize)
    }
}
