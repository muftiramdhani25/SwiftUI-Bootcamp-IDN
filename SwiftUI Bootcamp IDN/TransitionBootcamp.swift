//
//  TransitionBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 30/09/21.
//

import SwiftUI

struct TransitionBootcamp: View {
  
  @State var showView: Bool = false
  
  var body: some View {
    ZStack{
      
      VStack{
        Button("BUTTON") {
          showView.toggle()
        }
        
        Spacer()
      }
      
      if showView{
        RoundedRectangle(cornerRadius: 30)
          .frame(height: UIScreen.main.bounds.height * 0.5)
          //.transition(.slide)
          //.transition(.move(edge: .bottom))
          //.transition(AnyTransition.opacity.animation(.easeInOut))
          //.transition(AnyTransition.scale.animation(.easeInOut))
          .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .bottom)))
          .animation(.easeInOut)
      }
    }
  }
}

struct TransitionBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    TransitionBootcamp()
  }
}
