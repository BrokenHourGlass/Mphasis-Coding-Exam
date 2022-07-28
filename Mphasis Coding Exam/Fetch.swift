//
//  Fetch.swift
//  Mphasis Coding Exam
//
//  Created by admin on 7/28/22.
//

import Foundation

class DataFunction{
    var fetch = [model]()
    
    init(web: String){
        let url = URL(string: web)
        let json = JSONDecoder()
        
        _ = URLSession.shared.dataTask(with: url!, completionHandler: {data, response, error in
            if error != nil{
                print(error)
                return
            }
            else{
                do{
                    self.fetch = try json.decode([model].self, from: data!)
                }
                catch{
                    print("could not decode \(error)")
                }
            }
        }).resume()
        sleep(1)
        print(self.fetch)
    }
    func getData() -> [model]{
        return self.fetch
    }
}
