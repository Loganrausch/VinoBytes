//
//  Untitled.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/6/25.
//

// Account/Representables/ShareSheet.swift
import SwiftUI

struct ShareSheet: UIViewControllerRepresentable {
    let activityItems: [Any]

    func makeUIViewController(context: Context) -> UIActivityViewController {
        UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}
