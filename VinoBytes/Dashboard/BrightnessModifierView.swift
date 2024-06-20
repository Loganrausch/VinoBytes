//
//  BrightnessModifierView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/18/24.
//

import Foundation

import SwiftUI

struct BrightnessModifierView: UIViewControllerRepresentable {
    var brightness: CGFloat

    class Coordinator: NSObject {
        var parent: BrightnessModifierView
        var originalBrightness: CGFloat

        init(parent: BrightnessModifierView) {
            self.parent = parent
            self.originalBrightness = UIScreen.main.brightness
        }

        func adjustBrightness() {
            UIScreen.main.brightness = self.parent.brightness
        }

        func restoreBrightness() {
            UIScreen.main.brightness = self.originalBrightness
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }

    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = UIViewController()
        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        UIScreen.main.brightness = self.brightness
    }
}
