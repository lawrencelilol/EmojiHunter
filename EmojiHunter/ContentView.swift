//
//  ContentView.swift
//  EmojiHunter
//
//  Created by Lawrence on 11/16/22.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var viewModel = GameViewModel()
    var body: some View {
      ZStack{
        if viewModel.showNext || viewModel.emojiStatus == .found{
          Button(action: {
            viewModel.startSearch()
          }) {
            Text("NEXT")
              .padding()
              .background(Color.green)
              .foregroundColor(Color.white)
              .cornerRadius(6)
          }
        } else {
          CustomCameraRepresentable(emojiString: emojiObjects[viewModel.currentLevel].emojiName, emojiFound: $viewModel.emojiStatus)
       }
        VStack {
          Spacer()
          if viewModel.emojiStatus == .gameOver {
            Button(action: {
              viewModel.restartGame()
            }) {
              Text("GAME OVER.\n TAP TO RETRY")
                .padding()
                .background(Color.green)
                .foregroundColor(Color.white)
                .cornerRadius(3)
            }
          } else {
            if viewModel.emojiStatus == .searching {
              Text("\(viewModel.timeRemaining)")
              .font(.system(size:50, design: .rounded))
              .fontWeight(.bold)
              .foregroundColor(.yellow)
              .onReceive(viewModel.timer){ _ in
                    viewModel.adjustTime()
                 }
            }
          }
          
          viewModel.emojiResultText()
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
