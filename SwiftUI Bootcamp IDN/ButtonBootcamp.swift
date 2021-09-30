//
//  ButtonBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 28/09/21.
//

import SwiftUI

struct ButtonBootcamp: View {
  
  @State var title: String = "This is my title"
  
  var body: some View {
    VStack(spacing: 20) {
      Text(title)
      
      Button("Press Me") {
        self.title = "Button 1 was pressed"
      }
      .accentColor(.red)
      
      Button(action: {
        self.title = "Button 2 (save blue) was pressed"
      }, label: {
        Text("Save".uppercased())
          .font(.headline)
          .fontWeight(.semibold)
          .foregroundColor(.white)
          .padding()
          .padding(.horizontal, 20)
          .background(Color.blue)
          .cornerRadius(10)
          .shadow(radius: 10)
      })
      
      Button(action: {
        self.title = "Button 3 (love) was pressed"
      }, label: {
        Circle()
          .fill(Color.white)
          .frame(width: 75, height: 75)
          .shadow(radius: 10)
          .overlay(
            Image(systemName: "heart.fill")
              .font(.largeTitle)
              .foregroundColor(Color(#colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)))
          )
      })
      
      
      Button(action: {
        self.title = "Button 4 (Finish) was pressed"
      }, label: {
        Text("Finish".uppercased())
          .font(.caption)
          .bold()
          .foregroundColor(.gray)
          .padding()
          .padding(.horizontal, 10)
          .background(
            Capsule()
              .stroke(Color.gray, lineWidth: 2.0)
          )
      })
      
    }
  }
}

struct ButtonBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ButtonBootcamp()
  }
}
