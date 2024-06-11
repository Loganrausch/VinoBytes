//
//  OpenAIChatView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/11/24.
//

import Foundation

import SwiftUI

// This SwiftUI view provides a simple chat interface for interacting with OpenAI.
struct OpenAIChatView: View {
    // Create an instance of OpenAIManager to handle the API communication.
    @StateObject private var openAIManager = OpenAIManager()
    // State variable to hold the user's input.
    @State private var userInput: String = ""

    var body: some View {
        VStack {
            Text("Ask OpenAI:")
                .font(.title)

            // Text field for user input.
            TextField("Enter your question...", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            // Button to send the user's message to the API.
            Button(action: {
                openAIManager.sendMessageToAPI(message: userInput)
            }) {
                Text("Send")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }

            // Display the response from the API.
            Text("Response:")
                .font(.title2)
                .padding(.top)

            Text(openAIManager.responseMessage)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
                .padding()
        }
        .padding()
    }
}

// Preview provider for SwiftUI previews.
struct OpenAIChatView_Previews: PreviewProvider {
    static var previews: some View {
        OpenAIChatView()
    }
}
