//
//  AddTaskViewController.swift
//  CoreToDo
//
//  Created by Youmeiyi Pan on 4/20/17.
//  Copyright © 2017 Youmeiyi Pan. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var isImp: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnTapped(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = textField.text!
        task.isImportant = isImp.isOn
        
        // Save the data to coredata
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController!.popViewController(animated: true)
    }

}
