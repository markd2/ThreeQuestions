//
//  ContentView.swift
//  Three Questions
//
//  Created by markd on 12/18/23.
//

import SwiftUI

struct ContentView: View {
    enum Current {
        case splash
        case yesterday
        case today
        case third

        var buttonTitle: String {
            switch self {
            case .splash:
                "Get Started"
            case .yesterday:
                "Next"
            case .today:
                "Next"
            case .third:
                "Done! Thank you"
            }
        }
        mutating func cycle() {
            switch self {
            case .splash:
                self = .yesterday
            case .yesterday:
                self = .today
            case .today:
                self = .third
            case .third:
                self = .splash
            }
        }
    }

    @State var current = Current.splash

    var body: some View {
        VStack {
            switch current {
            case .splash:
                Text("")
            case .yesterday:
                Text(Prompts.yesterday.random)
            case .today:
                Text(Prompts.today.random)
            case .third:
                Text(Prompts.third.random)
            }

            Button(current.buttonTitle) {
                current.cycle()
            }
            .padding(.top, 22.0)

        }
        .font(.largeTitle)
        .multilineTextAlignment(.center)
        .padding()
    }
}

#Preview {
    ContentView()
}
