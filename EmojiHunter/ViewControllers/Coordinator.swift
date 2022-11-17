//
//  Coordinator.swift
//  EmojiHunter
//
//  Created by Lawrence on 11/17/22.
//

import Foundation
import SwiftUI

class Coordinator: NSObject, UINavigationControllerDelegate, EmojiFoundDelegate {
  
    @Binding var emojiFound: EmojiSearch
  
    init(emojiFound: Binding<EmojiSearch>) {
      _emojiFound = emojiFound
    }
  
    func emojiWasFound(result: Bool) {
      print("emojiWasFound \(result)")
      emojiFound = .found
    }
}
