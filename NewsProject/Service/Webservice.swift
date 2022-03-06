//
//  Webservice.swift
//  NewsProject
//
//  Created by Macbook on 6.03.2022.
//

import Foundation

class Webservice {
    func newsDownload(url: URL, completion: @escaping([News]?) -> ()){
        URLSession.shared.dataTask(with: url){ (data, response, error) in
            if let error = error{
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data {
                let newsSeries = try? JSONDecoder().decode([News].self, from: data)
                if let newsSeries = newsSeries{
                    completion(newsSeries)
                }
            }
        }.resume()
    }
}
