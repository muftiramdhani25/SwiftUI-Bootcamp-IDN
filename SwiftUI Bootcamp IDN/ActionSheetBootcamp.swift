//
//  ActionSheetBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 30/09/21.
//

import SwiftUI

struct ActionSheetBootcamp: View {
  
  @State var showActionSheet: Bool = false
  
  var body: some View {
    
    VStack{
      HStack{
        Circle()
          .frame(width: 30, height: 30)
        Text("@username")
        Spacer()
        Button(action: {
          showActionSheet.toggle()
        }, label: {
          Image(systemName: "ellipsis")
        })
        .accentColor(.primary)
      }
      .padding(.horizontal)
      
      Rectangle()
        .aspectRatio(1.0, contentMode: .fit)
    }
    .actionSheet(isPresented: $showActionSheet, content: {
      ActionSheet(
        title: Text("What would you like to do?"),
        message: nil,
        buttons: [
          .default(Text("Share")),
          .destructive(Text("Report")),
          .destructive(Text("Delete")),
          .cancel()])
    })
    
//    Button("Click Me") {
//      showActionSheet.toggle()
//    }
//    .actionSheet(isPresented: $showActionSheet, content: {
//      //ActionSheet(title: Text("This is the title!"))
//      ActionSheet(
//        title: Text("This is the title"),
//        message: Text("This is the message"),
//        buttons: [.default(Text("Default")), .destructive(Text("Destructive")), .cancel()])
//    })
  }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ActionSheetBootcamp()
  }
}
