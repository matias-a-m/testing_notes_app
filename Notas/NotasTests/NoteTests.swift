//
//  NotasTests.swift
//  NotasTests
//
//  Created by matias on 05/12/2023.
//

import XCTest
@testable import Notas

final class NoteTests: XCTestCase {
    
    // Prueba la inicialización de la nota con valores válidos
    func testNoteInitialization() {
        // Given or Arrange
        let title = "Test Title"
        let text = "Test Text"
        let date = Date()
        
        // When or Act
        let note = Note(title: title, text: text, createdAt: date)
        
        // Then or Assert
        XCTAssertEqual(note.title, title, "El título de la nota no coincide")
        XCTAssertEqual(note.text, text, "El texto de la nota no coincide")
        XCTAssertEqual(note.createdAt, date, "La fecha de creación de la nota no coincide")
    }

    // Prueba que la nota tiene un texto vacío cuando se le pasa nil como argumento
    func testNotesEmptyText() {
        // Given
        let title = "Test Title"
        let date = Date()
        
        // When
        let note = Note(title: title, text: nil, createdAt: date)
        
        // Then
        XCTAssertEqual(note.getText, "", "El texto de la nota no es vacío como se esperaba")
    }
    
}
