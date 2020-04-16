//
//  Constants.swift
//  BarkParkV2
//
//  Created by Hunter Schoening on 4/14/20.
//  Copyright © 2020 Hunter Schoening. All rights reserved.
//
import Foundation

struct K {
    static let nicknameKey = "Nickname"
    static let dogNameKey = "DogName"
    static let dogBreedKey = "DogBreed"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
    
    struct BrandColors {
        static let lightGreen = "brandLightGreen"
        static let green = "brandGreen"
        static let grey = "brandGrey"
        static let darkGrey = "brandDarkGrey"
    }
}
