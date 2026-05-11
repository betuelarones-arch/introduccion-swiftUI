import Foundation

class Cursos: Identifiable{
    let id = UUID()
    let title: String
    let language: String
    let description: String
    let imageUrl: String?

    init(title: String, language: String, description: String, imageUrl: String? = nil ) {
        self.title = title
        self.language = language
        self.description = description
        self.imageUrl = imageUrl
    }
}


