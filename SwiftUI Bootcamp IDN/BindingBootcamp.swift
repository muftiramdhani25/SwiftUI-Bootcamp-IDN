//
//  BindingBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 29/09/21.
//

import SwiftUI

struct BindingBootcamp: View {
  
  @State var backgroundColor: Color = Color.green
  @State var title: String = "Title"
  
  var body: some View {
    ZStack{
      backgroundColor.edgesIgnoringSafeArea(.all)
      
      VStack{
        Text(title)
          .foregroundColor(Color.white)
        
        ButtonView(backgroundColor: $backgroundColor, title: $title)
      }
    }
  }
}

struct ButtonView: View {
  
  @Binding var backgroundColor: Color
  @Binding var title: String
  @State var buttonColor: Color = Color.blue
  
  var body: some View{
    Button(action: {
      backgroundColor = Color.orange
      title = "New Title"
      buttonColor = Color.pink
    }, label: {
      Text("Button")
        .foregroundColor(Color.white)
        .padding()
        .padding(.horizontal)
        .background(buttonColor)
        .cornerRadius(10)
    })
  }
}

struct BindingBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    BindingBootcamp()
  }
}
