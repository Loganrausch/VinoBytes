//
//  OpenAIManager.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/11/24.
//

import Foundation

// This class is responsible for managing the communication with the OpenAI API.
class OpenAIManager: ObservableObject {
    // Published property to hold the response message from the API.
    @Published var responseMessage: String = ""

    // Function to send a message to the OpenAI API.
    func sendMessageToAPI(message: String) {
        // Ensure the URL is valid.
        guard let url = URL(string: "https://vinobytes-afe480cea091.herokuapp.com/api/chat") else { return }

        // Create a URL request and set its method to POST.
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        // Create the request body with the user's message.
        let body: [String: Any] = ["message": message]
        request.httpBody = try? JSONSerialization.data(withJSONObject: body)

        // Perform the network request.
        URLSession.shared.dataTask(with: request) { data, response, error in
            // Handle errors.
            guard let data = data, error == nil else {
                print("Error:", error ?? "Unknown error")
                return
            }

            // Parse the JSON response.
            if let responseJSON = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
               let choices = responseJSON["choices"] as? [[String: Any]],
               let messageContent = choices.first?["message"] as? [String: Any],
               let content = messageContent["content"] as? String {
                // Update the response message on the main thread.
                DispatchQueue.main.async {
                    self.responseMessage = content
                }
            }
        }.resume()
    }
}
