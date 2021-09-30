//
//  ExtractedFunction.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 29/09/21.
//

import SwiftUI

struct ExtractedFunction: View {
  
  @State var backgroundColor: Color = Color.pink
  
  var body: some View {
    ZStack{
      backgroundColor.edgesIgnoringSafeArea(.all)
      
      VStack{
        Text("Title")
          .font(.largeTitle)
        
        Button(action: {
          buttonPressed()
        }, label: {
          Text("Press Me")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
        })
      }
    }
  }
  
  func buttonPressed(){
    backgroundColor = Color.yellow
  }
}

struct ExtractedFunction_Previews: PreviewProvider {
  static var previews: some View {
    ExtractedFunction()
  }
}
