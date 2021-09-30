//
//  AnimationTimingBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 29/09/21.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
  
  @State var isAnimating: Bool = false
  
  var body: some View {
    VStack{
      
      Button("Button") {
        isAnimating.toggle()
      }
      
      RoundedRectangle(cornerRadius: 20)
        .frame(width: isAnimating ? 350 : 50, height: 100)
        .animation(.spring())
      
//      RoundedRectangle(cornerRadius: 20)
//        .frame(width: isAnimating ? 350 : 50, height: 100)
//        .animation(Animation.linear(duration: 10.0))
//
//      RoundedRectangle(cornerRadius: 20)
//        .frame(width: isAnimating ? 350 : 50, height: 100)
//        .animation(Animation.easeIn(duration: 10.0))
//
//      RoundedRectangle(cornerRadius: 20)
//        .frame(width: isAnimating ? 350 : 50, height: 100)
//        .animation(Animation.easeOut(duration: 10.0))
//
//      RoundedRectangle(cornerRadius: 20)
//        .frame(width: isAnimating ? 350 : 50, height: 100)
//        .animation(Animation.easeInOut(duration: 10.0))
      
    }
  }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    AnimationTimingBootcamp()
  }
}
