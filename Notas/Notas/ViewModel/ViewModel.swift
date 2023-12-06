//
//  ViewModel.swift
//  Notas
//
//  Created by matias on 05/12/2023.
//

import Foundation
import Observation

@Observable
class ViewModel{
var notes: [Note]
    
    init(notes: [Note] = []) {
        self.notes = notes
    }
    
    func createNoteWith(title: String, text: String){
        let note: Note = .init(title: title, text: text, createdAt: .now)
        notes.append(note)
    }
    
    func updateNoteWith(id: UUID, newTitle: String, newText: String?){
        if let index = notes.firstIndex(where: { $0.id == id}) {
            let updateNote = Note(id: id, title: newTitle, text: newText, createdAt: notes[index].createdAt)
            notes[index] = updateNote
        }
    }
    
    func removeNoteWith(id: UUID){
        notes.removeAll(where: {$0.id == id})
    }
    
}
