//
//  Title Model.swift
//  IOS Code Challenge
//
//  Created by Ricardo Developer on 12/04/24.
//

import Foundation

// MARK: - IOSCodeChallengeTitleElement
struct Titles: Codable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}

//typealias IOSCodeChallengeTitle = [IOSCodeChallengeTitleElement]

