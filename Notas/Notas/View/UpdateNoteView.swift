//
//  UpdateNoteView.swift
//  Notas
//
//  Created by matias on 05/12/2023.
//

import SwiftUI

struct UpdateNoteView: View {
    var viewModel: ViewModel
    
    let id: UUID
    
    @State var title: String = ""
    @State var text: String = ""
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack{
            Form{
                Section{
                    TextField("", text: $title, prompt: Text("*Título"), axis: .vertical)
                    TextField("", text: $text, prompt: Text("*Texto"), axis: .vertical)
                }
            }
          
            Button(action: {
                viewModel.removeNoteWith(id: id)
                dismiss()
            }, label: {
                Text("Eliminar Nota")
                    .foregroundStyle(.gray)
                    .underline()
            })
         
        }
        .background(Color(uiColor: .systemGroupedBackground))
        .toolbar{
            ToolbarItem(placement: .topBarTrailing){
                Button{
                    viewModel.updateNoteWith(id: id, newTitle: title, newText: text)
                        dismiss()
                } label: {
                    Text("Guardar")
                        .bold()
                }
            }
    
        }
        .navigationTitle("Modificar Nota")
    }
}

#Preview {
    NavigationStack{
        UpdateNoteView(viewModel: .init(), id: .init(), title: "Swift", text: "hello-world")
    }
   
}
