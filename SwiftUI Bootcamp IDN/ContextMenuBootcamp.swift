//
//  ContextMenuBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 30/09/21.
//

import SwiftUI

struct ContextMenuBootcamp: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 10.0){
      Image(systemName: "house.fill")
        .font(.title)
      Text("SwuftUI Bootcamp IDN")
        .font(.headline)
      Text("How to use context menu")
        .font(.subheadline)
    }
    .foregroundColor(Color.white)
    .padding(30)
    .background(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
    .cornerRadius(30)
    .contextMenu(menuItems: {
      Label("Share Post", systemImage: "square.and.arrow.up")
      Label("Report Post", systemImage: "bolt")
      Label("Like Post", systemImage: "heart")
    })
  }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ContextMenuBootcamp()
  }
}
