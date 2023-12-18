//
//  Prompts.swift
//  Three Questions
//
//  Created by markd on 12/18/23.
//

import Foundation

class Prompts {
    static var yesterday = Prompts(name: "yesterday")
    static var today = Prompts(name: "today")
    static var third = Prompts(name: "third")

    private var individuals: [String]

    var random: String {
        individuals.randomElement() ?? "huh"
    }

    init(name: String) {
        let listUrl = Bundle.main.url(forResource: name, withExtension: "txt")!
        let stuffs = try! String(contentsOf: listUrl, encoding: .utf8)
        individuals = stuffs.split(separator: "\n").map { String($0) }
        print(individuals)
    }
}
