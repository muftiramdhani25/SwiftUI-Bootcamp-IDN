//
//  TernaryBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 29/09/21.
//

import SwiftUI

struct TernaryBootcamp: View {
  
  @State var isStartingState: Bool = false
  
  var body: some View {
    VStack{
//      Button("Button: \(isStartingState.description)") {
//        isStartingState.toggle()
//      }
      
      Button(action: {
        isStartingState.toggle()
      }, label: {
        Text("Button")
          .foregroundColor(isStartingState ? Color.red : Color.blue)
      })
      
      Text(isStartingState ? "TRUE" : "False")
      
      RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
        .fill(isStartingState ? Color.red : Color.blue)
        .frame(
          width: isStartingState ? 200 : 50,
          height: isStartingState ? 200 : 50)
      
//      if isStartingState{
//        RoundedRectangle(cornerRadius: 25.0)
//          .fill(Color.red)
//          .frame(width: 200, height: 100)
//      } else {
//        RoundedRectangle(cornerRadius: 25.0)
//          .fill(Color.blue)
//          .frame(width: 200, height: 100)
//      }
    }
  }
}

struct TernaryBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    TernaryBootcamp()
  }
}
