//
//  FrameBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 27/09/21.
//

import SwiftUI

// cara mindahin atas cmd + option + ]
// cara mindahin bawah cmd + option + [

struct FrameBootcamp: View {
  var body: some View {
    Text("Hello, World!")
      .background(Color.red)
      .frame(height: 100, alignment: .top)
      .background(Color.orange)
      .frame(width: 150)
      .background(Color.purple)
      .frame(maxWidth: .infinity, alignment: .leading)
      .background(Color.pink)
      .frame(height: 400)
      .background(Color.green)
      .frame(maxHeight: .infinity, alignment: .top)
      .background(Color.yellow)
  }
}

struct FrameBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    FrameBootcamp()
  }
}
