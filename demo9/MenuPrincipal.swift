import SwiftUI
struct MenuPrincipal: View {
    var body: some View {
        VStack {
//            agregar un Navegador
            NavigationView{
                List {
//                  utilizat el NavigationLink
                    NavigationLink("Ventana02",
                                   destination: Text("Pagina 2"))
                    NavigationLink("Aplicacion02",
                                   destination: Text("Pagina 3"))
                    NavigationLink("Aplicacion03",
                                   destination: Text("Pagina 4"))
                    NavigationLink("Aplicacion04",
                                   destination: Text("Pagina 5"))
                }
                .navigationTitle("Menu Principal")
                .navigationBarTitleDisplayMode(.large)
            }
        }
        .padding()
    }
}

