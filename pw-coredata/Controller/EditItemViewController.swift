//
//  EditItemViewController.swift
//  pw-coredata
//
//  Created by Eliezer Sant Ana on 02/11/20.
//

import UIKit

class EditItemViewController : UIViewController {
    
    @IBOutlet weak var itemTextField: UITextField!
    
    var dataController: DataController!
    var item: Item!
    
    override func viewDidLoad() {
        if item != nil {
            itemTextField.text = item.text
        }
    }
    
    @IBAction func save() {
        
        guard let text = itemTextField.text else { return }
        
        item.text = text
        try? dataController.viewContext.save()
        navigationController?.popViewController(animated: true)
    }
}
