//
//  Emoji.swift
//  EmojiHunter
//
//  Created by Lawrence on 11/16/22.
//

import Foundation

protocol EmojiFoundDelegate {
  func emojiWasFound(result: Bool)
}


enum EmojiSearch {
  case found
  case notFound
  case searching
  case gameOver
}


struct EmojiModel {
  var emoji: String
  var emojiName: String
}

var laptop = EmojiModel(emoji: "💻", emojiName: "laptop")
var pen = EmojiModel(emoji: "✍️", emojiName: "pen")
var book = EmojiModel(emoji: "📕", emojiName: "book")
var phone = EmojiModel(emoji: "🍾", emojiName: "bottle")
var chair = EmojiModel(emoji: "🔑", emojiName: "key")


let emojiObjects = [laptop, pen, book, phone, chair]
