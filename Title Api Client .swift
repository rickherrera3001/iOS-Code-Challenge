//
//  Title Api Client .swift
//  IOS Code Challenge
//
//  Created by Ricardo Developer on 12/04/24.
//

import Foundation

class ApiClientTitles {
    func getTitle(completion: @escaping (Result<Titles, Error>) -> Void) {
        
        var request = URLRequest(url: URL(string: "http://jsonplaceholder.typicode.com/posts")!,timeoutInterval: Double.infinity)
        request.httpMethod = "GET"
        
        let _: Void = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                if let error = error {
                    print("Error: \(error)")
                } else {
                    print("No data received")
                }
                return
            }
            
            print(String(data: data, encoding: .utf8)!)
            
            do {
                let result = try JSONDecoder().decode(Titles.self, from: data)
                
                completion(.success(result))
                
            } catch {
                print("Error decoding JSON: \(error)")
                completion(.failure(error))

            }
        }.resume()
    }
}
