//
//  FermentationLibraryModel.swift
//  Funky Food
//
//  Created by Sidney de Koning on 08/12/2019.
//  Copyright © 2019 Sidney de Koning. All rights reserved.
//

import Foundation

struct FermentationItem: Equatable, Identifiable {
    static func == (lhs: FermentationItem, rhs: FermentationItem) -> Bool {
        return lhs.id == rhs.id
    }
    
    let id: UUID = UUID()
    let name: String
    let desc: String
    let imgPath: String
    let difficulty: Difficulty
    let phases: [FermentorPhase]
    let recipe: String
}

enum DurationUnit: String, CaseIterable {
    case minutes, hours, days, weeks, months, years
}

enum Difficulty: String, RawRepresentable {
    case easy, moderate, difficult, hard
    case timeconsuming = "time consuming"
}

struct FermentorPhase {
    let name: String
    let duration: Int
    let durationUnit: DurationUnit
    let hasReminder: Bool
    let isCompleted: Bool
}

class FermentationLibraryModel {
    
    private(set) public var items = [FermentationItem]()
    
    init() {
        self.createFixtures()
    }
    
    func createFixtures() {
        
        var phase1 = FermentorPhase(name: "Start fermentation", duration: 6, durationUnit: .hours, hasReminder: true, isCompleted: false)
        let beer = FermentationItem(name: "Beer", desc: "A fermented and carbonated drink", imgPath: "pint-of-beer", difficulty: .easy, phases: [phase1], recipe: "Just brew")
        
        items.append(beer)
        
        phase1 = FermentorPhase(name: "Start yeasting", duration: 2, durationUnit: .hours, hasReminder: true, isCompleted: false)
        let bread = FermentationItem(name: "Bread", desc: "A crispy sourdough", imgPath: "bread", difficulty: .moderate, phases: [phase1], recipe: "Knead and rest")
        
        items.append(bread)
        
        phase1 = FermentorPhase(name: "Curd making", duration: 2, durationUnit: .hours, hasReminder: true, isCompleted: false)
        let cheese = FermentationItem(name: "Cheese", desc: "A hard cheese", imgPath: "cheese", difficulty: .timeconsuming, phases: [phase1], recipe: "Stir and rest")
        
        items.append(cheese)
    }
    
}
