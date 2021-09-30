//
//  ShapeBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 27/09/21.
//

import SwiftUI

struct ShapeBootcamp: View {
  var body: some View {
    //Circle()
    //Ellipse()
    //Capsule()
    //Rectangle()
    RoundedRectangle(cornerRadius: 15.0)
      //.fill(Color.red)
      .foregroundColor(Color.blue)
      //.stroke()
      //.stroke(Color.blue)
      //.stroke(Color.blue, lineWidth: 2)
      //.strokeBorder()
      .frame(width: 100, height: 100)
  }
}

struct ShapeBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ShapeBootcamp()
  }
}
