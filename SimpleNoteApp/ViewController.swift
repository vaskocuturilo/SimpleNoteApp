//
//  ViewController.swift
//  SimpleNoteApp
//
//  Created by Anton Smirnov on 24.06.2021.
//

import UIKit

protocol DataDelegate {
    func updateArray(newArray: String)
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var notesArray = [Note]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "prototypeCell", for: indexPath)
        cell.textLabel?.text = notesArray[indexPath.row].title
        return cell
    }
    
    
    @IBOutlet weak var notesTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        APIServices.functions.delegate = self
        APIServices.functions.getNotesInformation()
        print(notesArray)
        
        notesTableView.delegate = self
        notesTableView.dataSource = self
        
    }
}

extension ViewController: DataDelegate {
    
    func updateArray(newArray: String) {
        do {
            notesArray = try JSONDecoder().decode([Note].self, from: newArray.data(using: .utf8)!)
        }catch {
            print("Failed to decode JSON string.")
        }
        self.notesTableView.reloadData()
    }
}

