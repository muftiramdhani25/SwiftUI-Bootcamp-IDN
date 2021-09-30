//
//  StateBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 29/09/21.
//

import SwiftUI

struct StateBootcamp: View {
  
  @State var backgroundColor: Color = Color.green
  @State var myTitle: String = "title"
  @State var count: Int = 0
  
  var body: some View {
    
    ZStack{
      backgroundColor.edgesIgnoringSafeArea(.all)
      
      VStack(spacing: 20){
        Text(myTitle)
          .font(.title)
        
        Text("Count: \(count)")
          .font(.headline)
          .underline()
        
        HStack{
          Button("Button 1") {
            backgroundColor = Color.red
            myTitle = "Background jadi merah"
            count += 1
          }
          
          Button("Button 2") {
            backgroundColor = Color.purple
            myTitle = "Background jadi ungu"
            count -= 1
          }
        }
      }
    }
  }
}

struct StateBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    StateBootcamp()
  }
}
