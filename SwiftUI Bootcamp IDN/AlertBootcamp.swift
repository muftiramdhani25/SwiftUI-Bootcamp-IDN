//
//  AlertBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 30/09/21.
//

import SwiftUI

struct AlertBootcamp: View {
  
  @State var showAlert: Bool = false
  @State var backgroundColor: Color = Color.gray
  
  var body: some View {
    ZStack {
      backgroundColor.edgesIgnoringSafeArea(.all)
      
      Button("Click Here") {
        showAlert.toggle()
      }
      .alert(isPresented: $showAlert, content: {
        //Alert(title: Text("There was an error!"))
  //      Alert(
  //        title: Text("Alert"),
  //        message: Text("Here we will describe the error"),
  //        dismissButton: .cancel())
        
        Alert(
          title: Text("Ganti Background?"),
          message: nil,
          primaryButton: .default(Text("Yes"), action: {
            backgroundColor = Color.red
          }),
          secondaryButton: .destructive(Text("No")))
    })
    }
  }
}

struct AlertBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    AlertBootcamp()
  }
}
