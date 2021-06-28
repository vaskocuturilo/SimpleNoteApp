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
    
    func getNotesInformation() {
        AF.request(Constants.Endpoints.fetch).response { response in
            let data = String(data: response.data!, encoding: .utf8)
            self.delegate?.updateArray(newArray: data!)
        }
    }
    
    func createNewNote(date: String, title: String, note: String){
        AF.request(Constants.Endpoints.create, method: .post,
                   parameters: ["title": title, "date": date, "note": note], encoding: JSONEncoding.default).responseJSON {
                    response in
                   }
    }
}
