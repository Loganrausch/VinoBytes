//
//  OpenAIChatView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/11/24.
//

import SwiftUI

struct OpenAIChatView: View {
    @Environment(\.managedObjectContext) private var managedObjectContext
    @StateObject var openAIManager: OpenAIManager
    
    @State private var inputText = ""

    init() {
        _openAIManager = StateObject(wrappedValue: OpenAIManager(context: PersistenceController.shared.container.viewContext))
    }

    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(openAIManager.messages) { message in
                        MessageView(message: message)
                    }
                }
                .padding()

                HStack {
                    TextField("Type your message...", text: $inputText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()

                    Button("Send") {
                        openAIManager.sendMessage(inputText) { _ in
                            inputText = ""
                        }
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding()

                Button("Clear Chat") {
                    openAIManager.clearMessages()
                }
                .padding()
                .foregroundColor(.red)
            }
            .navigationBarTitle("Chat", displayMode: .inline)
        }
    }
}

struct MessageView: View {
    var message: Message

    var body: some View {
        HStack {
            if message.role == "user" {
                Spacer()
                Text(message.content)
                    .padding()
                    .background(Color.blue.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .frame(maxWidth: 300, alignment: .trailing)
            } else {
                Text(message.content)
                    .padding()
                    .background(Color.green.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .frame(maxWidth: 300, alignment: .leading)
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}

struct OpenAIChatView_Previews: PreviewProvider {
    static var previews: some View {
        OpenAIChatView().environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
    }
}
