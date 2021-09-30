//
//  SpacerBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 27/09/21.
//

import SwiftUI

struct SpacerBootcamp: View {
  var body: some View {
    VStack{
      HStack{
        Image(systemName: "xmark")
        Spacer()
        Image(systemName: "gear")
      }
      .font(.title)
      //.background(Color.yellow)
      .padding(.horizontal)
      //.background(Color.blue)
      
      Spacer().frame(height: 100)
      
      Rectangle()
        .fill(Color.blue)
        .frame(height: 55)
        
    }
  }
}

struct SpacerBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    SpacerBootcamp()
  }
}
