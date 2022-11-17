//
//  CustomCameraRepresentable.swift
//  EmojiHunter
//
//  Created by Lawrence on 11/17/22.
//

import Foundation
import SwiftUI

struct CustomCameraRepresentable: UIViewControllerRepresentable {
  
    var emojiString: String
    @Binding var emojiFound: EmojiSearch


    func makeUIViewController(context: Context) -> CameraViewController {
      let controller = CameraViewController(emoji: emojiString)
      controller.delegate = context.coordinator
      return controller
    }

    func updateUIViewController(_ cameraViewController: CameraViewController, context: Context) {}

    func makeCoordinator() -> Coordinator {
      Coordinator(emojiFound: $emojiFound)
    }
}
