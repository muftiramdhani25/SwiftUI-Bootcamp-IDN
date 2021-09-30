//
//  SafeAreaBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 28/09/21.
//

import SwiftUI

struct SafeAreaBootcamp: View {
  var body: some View {
    ScrollView{
      VStack{
        Text("Title goes here")
          .font(.largeTitle)
          .frame(maxWidth: .infinity, alignment: .leading)
        
        ForEach(0..<10) { index in
          RoundedRectangle(cornerRadius: 25.0)
            .fill(Color.white)
            .frame(height: 150)
            .shadow(radius: 10)
            .padding()
        }
      }
    }
    .background(Color.red.edgesIgnoringSafeArea(.all))
    
  }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    SafeAreaBootcamp()
  }
}
