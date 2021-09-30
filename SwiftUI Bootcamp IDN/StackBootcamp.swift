//
//  StackBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 27/09/21.
//

import SwiftUI

struct StackBootcamp: View {
  var body: some View {
    
    VStack(spacing: 50){
      
      ZStack{
        Circle()
          .frame(width: 100, height: 100)
        
        Text("1")
          .font(.title)
          .foregroundColor(.white)
      }
      
      Text("1")
        .font(.title)
        .foregroundColor(.white)
        .background(
          Circle()
            .frame(width: 100, height: 100)
        )
    }
    
//    ZStack {
//      Circle()
//
//      Circle()
//        .fill(Color.red)
//        .frame(width: 200, height: 200)
//
//      Circle()
//        .fill(Color.white)
//        .frame(width: 100, height: 100)
//    }
  }
}

struct StackBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    StackBootcamp()
  }
}
