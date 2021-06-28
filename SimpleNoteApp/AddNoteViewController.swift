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
    @IBOutlet weak var deleteButton: UIBarButtonItem!
    
    @IBAction func addNewNote(_ sender: Any) {
        if update == true {
            APIServices.functions.updateNote(date: "placeholder", title: titleField.text!, note: bodyNoteView.text, id: note!._id)
        } else {
            APIServices.functions.createNewNote(date: "placeholder", title: titleField.text!, note: bodyNoteView.text)
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func removeNote(_ sender: Any) {
        
        let refreshAlert = UIAlertController(title: "Delete", message: "Are you sure you want to remove this note?", preferredStyle: UIAlertController.Style.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            APIServices.functions.removeNote(id: self.note!._id)
            self.navigationController?.popViewController(animated: true)
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
        }))
        
        present(refreshAlert, animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if update == false {
            self.deleteButton.isEnabled = false
            self.deleteButton.title = ""
        }
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
