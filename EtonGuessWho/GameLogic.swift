//
//  GameLogic.swift
//  EtonGuessWho
//
//  Created by Андрей Горяинов on 16.01.2025.
//

import Foundation

enum EyeColor: String {
    case brown, blue, green, hazel
}

enum HairColor: String {
    case black, brown, blonde, red, gray
}

enum Gender: String {
    case male, female, nonBinary
}

struct Person {
    let name: String
    let eyeColor: EyeColor
    let hairColor: HairColor
    let gender: Gender
}

class Board {
    private var cards: [Person] = []

    static func createDummyBoard() -> Board {
        let board = Board()
        board.cards = [
            Person(name: "Alex", eyeColor: .brown, hairColor: .black, gender: .male),
            Person(name: "Sarah", eyeColor: .blue, hairColor: .blonde, gender: .female),
            Person(name: "Jordan", eyeColor: .green, hairColor: .red, gender: .nonBinary),
            Person(name: "Emma", eyeColor: .hazel, hairColor: .brown, gender: .female),
            Person(name: "Ryan", eyeColor: .blue, hairColor: .black, gender: .male)
        ]
        return board
    }

    func findAllPeople(withEyeColor color: EyeColor) -> [Person] {
        return cards.filter { $0.eyeColor == color }
    }

    func findAllPeople(byGender gender: Gender) -> [Person] {
        return cards.filter { $0.gender == gender }
    }

    func findAllPeople(byHairColor hairColor: HairColor) -> [Person] {
        return cards.filter { $0.hairColor == hairColor }
    }
}
