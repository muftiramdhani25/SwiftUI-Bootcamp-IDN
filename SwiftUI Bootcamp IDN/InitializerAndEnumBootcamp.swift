//
//  InitializerAndEnumBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 28/09/21.
//

import SwiftUI

struct InitializerAndEnumBootcamp: View {
  
  let title: String
  let count: Int
  let backgroundColor: Color
  
  enum Fruit{
    case apple
    case banana
  }
  
  init(count: Int, fruit: Fruit) {
    self.count = count
    
    if fruit == .apple{
      self.title = "Apple"
      self.backgroundColor = .red
    } else {
      self.title = "Banana"
      self.backgroundColor = .yellow
    }
  }
  
  var body: some View {
    VStack(spacing: 12){
      Text("\(count)")
        .font(.largeTitle)
        .foregroundColor(.white)
        .underline()
      
      Text(title)
        .font(.headline)
        .foregroundColor(.white)
    }
    .frame(width: 150, height: 150)
    .background(backgroundColor)
    .cornerRadius(10)
  }
}

struct InitializerAndEnumBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    HStack {
      InitializerAndEnumBootcamp(count: 5, fruit: .apple)
      InitializerAndEnumBootcamp(count: 10, fruit: .banana)
    }
    
  }
}
