//
//  AddNoteViewController.swift
//  SimpleNoteApp
//
//  Created by Anton Smirnov on 28.06.2021.
//

import UIKit

class AddNoteViewController: UIViewController {
    
    var note: Note?
    var update = false
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var bodyNoteView: UITextView!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    
    @IBAction func addNewNote(_ sender: Any) {
        if update == true {
            APIServices.functions.updateNote(date: "placeholder", title: titleField.text!, note: bodyNoteView.text, id: note!._id)
        } else {
            APIServices.functions.createNewNote(date: "placeholder", title: titleField.text!, note: bodyNoteView.text)
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if update == true {
            titleField.text = note!.title
            bodyNoteView.text = note!.note
        }
        
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
