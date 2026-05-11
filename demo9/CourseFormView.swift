import SwiftUI

struct CourseFormView: View {
    @State private var title = ""
    @State private var language = ""
    @State private var description = ""
    @State private var imageUrl = ""  
    @Environment(\.dismiss) var dismiss
    var onSave: (Cursos) -> Void

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Título")) {
                    TextField("Título del curso", text: $title)
                }

                Section(header: Text("Lenguaje")) {
                    TextField("Lenguaje de programación", text: $language)
                }

                Section(header: Text("Descripción")) {
                    TextField("Descripción del curso", text: $description)
                }

                Section(header: Text("URL de la Imagen")) {
                    TextField("URL de Internet de la img (ejemplo: https://ejemplo.com/image.jpg)", text: $imageUrl)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.URL)
                }
            }
            .navigationTitle("Nuevo Curso")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Guardar") {
                        let course = Cursos(
                            title: title,
                            language: language,
                            description: description,
                            imageUrl: imageUrl.isEmpty ? nil : imageUrl
                        )
                        onSave(course)
                    }
                }

                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancelar") {
                        dismiss()
                    }
                }
            }
        }
    }
}
