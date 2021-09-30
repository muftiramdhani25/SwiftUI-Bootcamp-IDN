//
//  NavigationViewBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 30/09/21.
//

import SwiftUI

struct NavigationViewBootcamp: View {
  var body: some View {
    NavigationView{
      ScrollView{
        
        NavigationLink("Hello World!", destination: MyOtherScreen())
        
        Text("Hello World!")
        Text("Hello World!")
        Text("Hello World!")
      }
      .navigationTitle("All Inboxes")
      //.navigationBarTitleDisplayMode(.large)
      //.navigationBarHidden(true)
      .navigationBarItems(
        leading: Image(systemName: "person.fill"),
        trailing: NavigationLink(
          destination: MyOtherScreen(),
          label: {
            Image(systemName: "gear")
          }).accentColor(.red))
      
    }
  }
}

struct MyOtherScreen: View {
  
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View{
    ZStack{
      Color.green.edgesIgnoringSafeArea(.all)
        .navigationTitle("Green Screen")
        .navigationBarHidden(true)
      
      VStack {
        Button(action: {
          presentationMode.wrappedValue.dismiss()
        }, label: {
          Image(systemName: "xmark")
            .foregroundColor(.white)
            .font(.largeTitle)
            .padding(20)
        })
        
        NavigationLink("Click Here", destination: Text("3rd Screen"))
      }
      
      
    }
  }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    NavigationViewBootcamp()
  }
}
