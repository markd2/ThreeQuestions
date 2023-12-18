//
//  Three_QuestionsApp.swift
//  Three Questions
//
//  Created by markd on 12/18/23.
//

import SwiftUI

@main
struct Three_QuestionsApp: App {
    init() {
        _ = Prompts.yesterday
        _ = Prompts.today
        _ = Prompts.third
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
