//
//  AddNoteViewController.swift
//  SimpleNoteApp
//
//  Created by Anton Smirnov on 28.06.2021.
//

import UIKit

class AddNoteViewController: UIViewController {
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var bodyNoteView: UITextView!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    
    @IBAction func addNewNote(_ sender: Any) {
        APIServices.functions.createNewNote(date: "placeholder", title: titleField.text!, note: bodyNoteView.text)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
