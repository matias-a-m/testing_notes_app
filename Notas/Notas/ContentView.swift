//
//  ContentView.swift
//  Notas
//
//  Created by matias on 05/12/2023.
//

import SwiftUI
import SwiftData

// Definición de la estructura de vista principal
struct ContentView: View {
    
    var viewModel: ViewModel = .init()
    
    @State var showCreateNote: Bool = false
    
    // Cuerpo de la vista
    var body: some View {
        
        // Vista de división de navegación
        NavigationStack{
            
            // Lista de elementos
            List {
                // Iteración a través de los elementos utilizando ForEach
                ForEach(viewModel.notes) { note in
                    NavigationLink(value: note) {
                        VStack(alignment: .leading){
                            Text(note.title)
                                .foregroundStyle(.primary)
                            Text(note.getText)
                                .foregroundStyle(.secondary)
                        }
                    }
                    
                }
            }
            .toolbar{
                ToolbarItem(placement: .status){
                    Button(action: {
                        showCreateNote.toggle()
                    }, label: {
                        Label("Crear Nota", systemImage: "square.and.pencil")
                            .labelStyle(TitleAndIconLabelStyle())
                    })
                    .buttonStyle(.bordered)
                    .tint(.blue)
                    .bold()
                }
            }
            .navigationTitle("Notas")
            .navigationDestination(for: Note.self, destination: { note in
                UpdateNoteView(viewModel: viewModel, id: note.id, title: note.title, text: note.getText)
            })
            .fullScreenCover(isPresented: $showCreateNote, content: {
                CretaeNoteView(viewModel: viewModel)
            })
            
            }
        }
    }


// Vista de previsualización
#Preview {
    ContentView(viewModel: .init(notes: [
        .init(title: "Matias", text: "iOS Developer", createdAt: .now),
        .init(title: "Ana", text: "Web Developer", createdAt: Date()),
        .init(title: "Pedro", text: "Data Scientist", createdAt: Date(timeIntervalSinceNow: -86400)), // Hace un día
        .init(title: "Sofia", text: "Game Developer", createdAt: Date(timeIntervalSinceNow: -172800)), // Hace dos días
        .init(title: "Eduardo", text: "Machine Learning Engineer", createdAt: .now)
    ]))
}
