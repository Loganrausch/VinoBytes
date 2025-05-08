//
//  MailCompose.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/6/25.
//

import Foundation
import SwiftUI
import MessageUI


struct MailComposeView: UIViewControllerRepresentable {
    @Environment(\.dismiss) var dismiss // Use .dismiss for newer SwiftUI versions
    @Binding var isShowing: Bool
    @Binding var result: Result<MFMailComposeResult, Error>?
    var configure: (MFMailComposeViewController) -> Void

    func makeUIViewController(context: Context) -> MFMailComposeViewController {
        let vc = MFMailComposeViewController()
        vc.mailComposeDelegate = context.coordinator
        configure(vc)
        return vc
    }

    func updateUIViewController(_ uiViewController: MFMailComposeViewController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {
        var parent: MailComposeView

        init(_ parent: MailComposeView) {
            self.parent = parent
        }

        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
            if let error = error {
                parent.result = .failure(error)
                print("Mail Composer Error: \(error.localizedDescription)") // Debugging
            } else {
                parent.result = .success(result)
                print("Mail Composer Result: \(result)") // Debugging
            }
            parent.isShowing = false
            parent.dismiss()
        }
    }
}

