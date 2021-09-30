//
//  ImageBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 27/09/21.
//

import SwiftUI

struct ImageBootcamp: View {
  var body: some View {
    Image("google")
      .renderingMode(.original)
      .resizable()
      .frame(width: 100, height: 100)
      //.foregroundColor(.blue)
  }
}

struct ImageBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ImageBootcamp()
  }
}
