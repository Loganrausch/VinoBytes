//
//  ContentfulManager.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/29/24.
//

import Foundation
import os.log

// Define a custom error type
enum ContentfulManagerError: Error, LocalizedError {
    case invalidURL
    case noData
    case parsingError
    case serverError(String)
    case unknownError(Error)
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "The URL provided was invalid."
        case .noData:
            return "No data was received from the server."
        case .parsingError:
            return "Failed to parse the data."
        case .serverError(let message):
            return "Server error: \(message)"
        case .unknownError(let error):
            return error.localizedDescription
        }
    }
}

class ContentfulManager {
    static let shared = ContentfulManager()
    
    private let logger = Logger(subsystem: Bundle.main.bundleIdentifier!, category: "ContentfulManager")
    private let baseURL = "https://vinobytes-afe480cea091.herokuapp.com" // Replace with your Heroku app URL
    
    private let session: URLSession
    
    private init() {
        let config = URLSessionConfiguration.default
        config.timeoutIntervalForRequest = 30
        self.session = URLSession(configuration: config)
    }
    
    // Fetch Blog Posts
    func fetchBlogPosts(completion: @escaping ([BlogPost]?, Error?) -> Void) {
        guard let url = URL(string: "\(baseURL)/api/blogPosts") else { // Updated path
            logger.error("Invalid URL for blog posts")
            completion(nil, ContentfulManagerError.invalidURL)
            return
        }
        
        let task = session.dataTask(with: url) { data, response, error in
            // Handle networking errors
            if let error = error {
                self.logger.error("Error fetching blog posts: \(error.localizedDescription)")
                completion(nil, ContentfulManagerError.unknownError(error))
                return
            }
            
            // Validate response
            guard let httpResponse = response as? HTTPURLResponse else {
                self.logger.error("Invalid response from server.")
                completion(nil, ContentfulManagerError.serverError("Invalid response"))
                return
            }
            
            if httpResponse.statusCode != 200 {
                let message = HTTPURLResponse.localizedString(forStatusCode: httpResponse.statusCode)
                self.logger.error("Server returned status code \(httpResponse.statusCode): \(message)")
                completion(nil, ContentfulManagerError.serverError(message))
                return
            }
            
            // Parse data
            guard let data = data else {
                self.logger.error("No data received from server.")
                completion(nil, ContentfulManagerError.noData)
                return
            }
            
            do {
                            let decoder = JSONDecoder()
                            // Define a custom date decoding strategy
                            let dateFormatter = DateFormatter()
                            dateFormatter.dateFormat = "yyyy-MM-dd"
                            dateFormatter.locale = Locale(identifier: "en_US_POSIX")
                            dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
                            decoder.dateDecodingStrategy = .formatted(dateFormatter)
                            
                            let blogPosts = try decoder.decode([BlogPost].self, from: data)
                            self.logger.debug("Successfully fetched \(blogPosts.count) blog posts.")
                            completion(blogPosts, nil)
                        } catch {
                            self.logger.error("Error parsing blog posts: \(error.localizedDescription)")
                            completion(nil, ContentfulManagerError.parsingError)
            }
        }
        
        task.resume()
    }
    
    // Fetch Wine Fact
    func fetchWineFact(completion: @escaping (String?, Error?) -> Void) {
        guard let url = URL(string: "\(baseURL)/api/wineFact") else { // Updated path
            logger.error("Invalid URL for wine fact")
            completion(nil, ContentfulManagerError.invalidURL)
            return
        }
        
        let task = session.dataTask(with: url) { data, response, error in
            // Handle networking errors
            if let error = error {
                self.logger.error("Error fetching wine fact: \(error.localizedDescription)")
                completion(nil, ContentfulManagerError.unknownError(error))
                return
            }
            
            // Validate response
            guard let httpResponse = response as? HTTPURLResponse else {
                self.logger.error("Invalid response from server.")
                completion(nil, ContentfulManagerError.serverError("Invalid response"))
                return
            }
            
            if httpResponse.statusCode != 200 {
                let message = HTTPURLResponse.localizedString(forStatusCode: httpResponse.statusCode)
                self.logger.error("Server returned status code \(httpResponse.statusCode): \(message)")
                completion(nil, ContentfulManagerError.serverError(message))
                return
            }
            
            // Parse data
            guard let data = data else {
                self.logger.error("No data received from server.")
                completion(nil, ContentfulManagerError.noData)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let result = try decoder.decode([String: String].self, from: data)
                if let wineFact = result["fact"] {
                    self.logger.debug("Wine fact fetched successfully: \(wineFact)")
                    completion(wineFact, nil)
                } else {
                    self.logger.error("Wine fact not found in response.")
                    completion(nil, ContentfulManagerError.parsingError)
                }
            } catch {
                self.logger.error("Error parsing wine fact: \(error.localizedDescription)")
                completion(nil, ContentfulManagerError.parsingError)
            }
        }
        
        task.resume()
    }
    // MARK: - Device Token Registration
        func registerDeviceToken(_ token: String) {
            guard let url = URL(string: "\(baseURL)/registerDevice") else {
                logger.error("Invalid URL for device registration")
                return
            }
            
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            let body = ["deviceToken": token]
            request.httpBody = try? JSONSerialization.data(withJSONObject: body)
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    self.logger.error("Error registering device token: \(error.localizedDescription)")
                    return
                }
                self.logger.debug("Device token registered successfully")
            }.resume()
        }
    }
