//
//  Note.swift
//  Notas
//
//  Created by matias on 05/12/2023.
//

import Foundation

struct Note: Identifiable, Hashable{
    var id: UUID
    let title: String
    let text: String?
    let createdAt: Date
    
    var getText: String{
        text ?? ""
    }
    
    init(id: UUID = UUID(), title: String, text: String?, createdAt: Date) {
        self.id = id
        self.title = title
        self.text = text
        self.createdAt = createdAt
    }
    
}
