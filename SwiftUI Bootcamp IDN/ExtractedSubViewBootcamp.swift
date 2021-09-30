//
//  ExtractedSubViewBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 29/09/21.
//

import SwiftUI

struct ExtractedSubViewBootcamp: View {
  var body: some View {
    ZStack{
      Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).edgesIgnoringSafeArea(.all)
      
      contentLayer
    }
  }
  
  var contentLayer: some View{
    HStack{
      MyItem(title: "Apple", count: 1, color: Color.red)
      MyItem(title: "Orange", count: 2, color: Color.orange)
      MyItem(title: "Banana", count: 3, color: Color.yellow)
    }
  }
}

struct ExtractedSubViewBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ExtractedSubViewBootcamp()
  }
}

struct MyItem: View {
  
  let title: String
  let count: Int
  let color: Color
  
  var body: some View{
    VStack{
      Text("\(count)")
      Text(title)
    }
    .padding()
    .background(color)
    .cornerRadius(10)
  }
}
