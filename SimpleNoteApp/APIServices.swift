//
//  APIServices.swift
//  SimpleNoteApp
//
//  Created by Anton Smirnov on 27.06.2021.
//

import Foundation
import Alamofire

struct Note: Decodable {
    var _id: String
    var title: String
    var note: String
    var date: String
}

class APIServices {
    
    var delegate: DataDelegate?
    static let functions  = APIServices()
    
    func getAllNotesInformation() {

        AF.request("http://localhost:5000/api/fetch/").response { response in
            
            print(response.data!)
            
            let data = String(data: response.data!, encoding: .utf8)
            self.delegate?.updateArray(newArray: data!)
        }
    }
}
