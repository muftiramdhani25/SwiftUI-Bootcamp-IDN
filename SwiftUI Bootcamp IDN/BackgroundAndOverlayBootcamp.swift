//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUI Bootcamp IDN
//
//  Created by Mufti Ramdhani on 27/09/21.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
  var body: some View {
    Image(systemName: "heart.fill")
      .font(.system(size: 40))
      .foregroundColor(Color.white)
      .background(
        Circle()
          .fill(
            LinearGradient(
              gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))]),
              startPoint: .topLeading,
              endPoint: .bottomTrailing)
          )
          .frame(width: 100, height: 100)
          .shadow(color: Color(#colorLiteral(red: 0.3652861118, green: 0.06818141788, blue: 0.9694469571, alpha: 0.5)), radius: 10, x: 0.0, y: 10)
          .overlay(Circle()
                    .fill(Color.blue)
                    .frame(width: 35, height: 35)
                    .shadow(color: Color(#colorLiteral(red: 0.3652861118, green: 0.06818141788, blue: 0.9694469571, alpha: 0.5)), radius: 10, x: 0.0, y: 10)
                    .overlay(
                      Text("5")
                        .font(.headline)
                        .foregroundColor(.white)
                    )
                   
                   , alignment: .bottomTrailing)
      )
  }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    BackgroundAndOverlayBootcamp()
  }
}
