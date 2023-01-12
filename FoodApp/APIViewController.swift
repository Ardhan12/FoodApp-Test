//
//  APIViewController.swift
//  FoodApp
//
//  Created by Arief Ramadhan on 21/12/22.
//

import UIKit

class APIViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let params = [
            "title": "avangers",
            "body": "there is a body about this api"
        ]
        guard let url = URL(string: "https://api.themoviedb.org/3/tv/popular?api_key=6e6d4b941240cc930578737ea50b155c&language=en-US&page=1") else { return }
        
        var request = URLRequest(url:url)
        request.httpMethod = "POST"
        request.setValue("Applicatiion/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONSerialization.data(withJSONObject: params, options: [])
        
        let session = URLSession.shared.dataTask(with: request) {
             data, response, error in
            if let error = error {
                print("The error was: \(error.localizedDescription)")
            } else {
                let jsonRes = try? JSONSerialization.jsonObject(with: data!, options: [])
                print("Response json is: \(jsonRes)")
            }
        }.resume()
        
    }
    
    func getPosts() {
        guard let url = URL(string: "https://api.themoviedb.org/3/tv/popular?api_key=6e6d4b941240cc930578737ea50b155c&language=en-US&page=1") else { return }
        let session = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print("There was an error: \(error.localizedDescription)")
            } else {
                let jsonRes = try? JSONSerialization.jsonObject(with: data!, options: [])
                print("the response: \(jsonRes)")
            }
        }.resume()
    }

}
