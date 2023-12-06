//
//  ViewModelTest.swift
//  NotasTests
//
//  Created by matias on 06/12/2023.
//

import XCTest
@testable import Notas

final class ViewModelTest: XCTestCase {
    var viewModel: ViewModel!

    override func setUpWithError() throws {
        viewModel = ViewModel()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testCreateNote(){
        // Given
        let title1 = "Test Title"
        let text1 = "Test Text"
        
        let title2 = "Test Title"
        let text2 = "Test Text"
        
        let title3 = "Test Title"
        let text3 = "Test Text"
        
        // When
        viewModel.createNoteWith(title: title1, text: text1)
        viewModel.createNoteWith(title: title2, text: text2)
        viewModel.createNoteWith(title: title3, text: text3)
        
        // Then
        XCTAssertEqual(viewModel.notes.count, 3)
        XCTAssertEqual(viewModel.notes.first?.title, title1)
        XCTAssertEqual(viewModel.notes.first?.text, text1)
        
        XCTAssertEqual(viewModel.notes[1].title, title2)
        XCTAssertEqual(viewModel.notes[1].text, text2)
        
        XCTAssertEqual(viewModel.notes[2].title, title3)
        XCTAssertEqual(viewModel.notes[2].text, text3)
        
    }

    func testUpdateNote(){
        // Given
        let title = "Test Title"
        let text = "Test Text"
        
        viewModel.createNoteWith(title: title, text: text)
        
        let newTitle = "New Title"
        let newText = "New Text"
        
        // When
        if let id = viewModel.notes.first?.id{
            viewModel.updateNoteWith(id: id, newTitle: newTitle, newText: newText)
            
        // Then
            XCTAssertEqual(viewModel.notes.first?.title, newTitle)
            XCTAssertEqual(viewModel.notes.first?.text, newText)
        }
        else{
            XCTFail("No note was created")
        }
    }
    
    func testRemoveNote(){
        // Given
        let title = "Test Title"
        let text = "Test Text"
        
        viewModel.createNoteWith(title: title, text: text)
        
        if let id = viewModel.notes.first?.id{
            // When
            viewModel.removeNoteWith(id: id)
            
            // Then
            XCTAssertTrue(viewModel.notes.isEmpty)
        }
        else{
            XCTFail("No note was remove")
        }
        
    }

}
