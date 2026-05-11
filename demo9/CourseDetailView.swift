import SwiftUI

struct CourseDetailView: View {
    let course: Cursos

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            AsyncImage(url: course.imageUrl.flatMap(URL.init)) { phase in
                switch phase {
                case .empty:
                    
                    ProgressView()
                    .frame(maxWidth: 150, maxHeight: 150)
                    .padding(.bottom)

                    Text("Cargando imagen...")
                        .font(.caption)

                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.blue, lineWidth: 2)
                        )

                case .failure:
                    Image(systemName: "photo")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                        .frame(maxWidth: 150, maxHeight: 150)
                    Text("No se pudo cargar la imagen")
                        .font(.caption)
                        .foregroundColor(.red)
                }
            }
            .frame(maxWidth: .infinity, alignment: .center)

            Text(course.title)
                .font(.largeTitle)
                .bold()
                .padding(.top)

            Text("Lenguaje: \(course.language)")
                .foregroundColor(.blue)

            Text(course.description)
                .multilineTextAlignment(.center)
                .padding()

            Spacer()
        }
        .padding()
        .navigationTitle(course.title)
    }
}

struct CourseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetailView(course: Cursos(
            title: "SwiftUI Avanzado",
            language: "Swift",
            description: "Domina los secretos de SwiftUI con este curso intensivo.",
            imageUrl: "https://developer.apple.com/images/branding/swift-logo-full.png"
        ))
    }
}
