//
//  CompleteToDoIntent.swift
//  ToDoWidgetExtension
//
//  Created by Beyza Nur Tekerek on 8.10.2024.
//

import Foundation
import SwiftUI
import AppIntents

struct CompleteToDoIntent : AppIntent {
   
    static var title: LocalizedStringResource = "Complete ToDo"
    
    @Parameter(title: "ToDo Id")
    var id : String
    
    init() {
        
    }
    
    init(id: String) {
        self.id = id
    }
    
    func perform() async throws -> some IntentResult {
        
        if let index = SharedDatas.shared.toDos.firstIndex(where: {
            $0.id  == id
            }) {
            SharedDatas.shared.toDos[index].isDone.toggle()
            print("database updated")
        }
        return .result()
    }
    
}
