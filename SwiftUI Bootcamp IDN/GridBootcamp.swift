//
//  GridBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 28/09/21.
//

import SwiftUI

struct GridBootcamp: View {
  
  let columns: [GridItem] = [
    GridItem(.flexible(), spacing: nil, alignment: nil),
    GridItem(.flexible(), spacing: nil, alignment: nil),
    GridItem(.flexible(), spacing: nil, alignment: nil)
  ]
  
  var body: some View {
    ScrollView{
      Rectangle()
        .fill(Color.orange)
        .frame(height: 400)
      
      LazyVGrid(
        columns: columns,
        alignment: .center,
        spacing: nil,
        pinnedViews: [.sectionHeaders],
        content: {
          Section(header:
                    Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                    .padding()
          ) {
            ForEach(0..<20) { index in
              Rectangle()
                .frame(height: 100)
            }
          }
          
          Section(header:
                    Text("Section 2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.red)
                    .padding()
          ) {
            ForEach(0..<20) { index in
              Rectangle()
                .frame(height: 100)
            }
          }
      })
    }
  }
}

struct GridBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    GridBootcamp()
  }
}
