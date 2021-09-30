//
//  ListBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 30/09/21.
//

import SwiftUI

struct ListBootcamp: View {
  
  @State var fruits: [String] = [
    "apple", "orange", "banana", "peach", "manggo"
  ]
  
  @State var vegetables: [String] = [
    "tomato", "potato", "beans"
  ]
  
  var body: some View {
    NavigationView {
      List{
        Section(header: Text("Fruits")) {
          ForEach(fruits, id: \.self) { fruit in
            Text(fruit.capitalized)
          }
          .onDelete(perform: { indexSet in
            fruits.remove(atOffsets: indexSet)
          })
          .onMove(perform: { indices, newOffset in
            fruits.move(fromOffsets: indices, toOffset: newOffset)
          })
        }
      }
      .navigationTitle("Grocery List")
      .navigationBarItems(leading: EditButton())
    }
  }
}

struct ListBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ListBootcamp()
  }
}
