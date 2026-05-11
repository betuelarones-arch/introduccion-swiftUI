import SwiftUI

struct ListFruits: View {
    let fruits = ["🍎 Apple", "🍌 Banana", "🍇 Grape", "🍓 Strawberry"]

    var body: some View {
        NavigationView {
            List(fruits, id: \.self) { fruit in
                Text(fruit)
            }
            .navigationTitle("Lista de Frutas")
        }
    }
}

