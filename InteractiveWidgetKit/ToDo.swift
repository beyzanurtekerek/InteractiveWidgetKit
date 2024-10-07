//
//  ToDo.swift
//  InteractiveWidgetKit
//
//  Created by Beyza Nur Tekerek on 7.10.2024.
//

import Foundation

struct ToDo : Identifiable {
    let id : String = UUID().uuidString
    let name : String
    var isDone : Bool = false
}


class SharedDatas {
    
    static let shared = SharedDatas()
    
    var toDos : [ToDo] = [
        .init(name: "test1 uzun yazı uzun yazı"),
        .init(name: "beyza nur tekerek"),
        .init(name: "buda test3 son uzun yazı")
    ]
    
}
