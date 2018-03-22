//
//  ViewController.swift
//  SQTutorial
//
//  Created by Micheal Griffin on 22/03/2018.
//  Copyright © 2018 Micheal Griffin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func createTable(_ sender: UIButton) {
        print("Created Tapped")
    }
    
    @IBAction func insertUser(_ sender: UIButton) {
        print("Insert Tapped")
        let alert = UIAlertController(title: "Insert Users", message: nil, preferredStyle: .alert)
        alert.addTextField { (tf) in
            tf.placeholder = "Name"
        }
        alert.addTextField { (tf) in
            tf.placeholder = "Email"
        }
        let action = UIAlertAction(title: "Submit", style: .default) { (_) in
            guard let name = alert.textFields?.first?.text, let email = alert.textFields?.last?.text else{ return}
            print(name)
            print(email)
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func listUser(_ sender: UIButton) {
        print("List Tapped")
    }
    
    @IBAction func updateUsers(_ sender: UIButton) {
        print("Update Tapped")
        let alert = UIAlertController(title: "Update Users", message: nil, preferredStyle: .alert)
        alert.addTextField { (tf) in
            tf.placeholder = "User ID"
        }
        alert.addTextField { (tf) in
            tf.placeholder = "Email"
        }
        let action = UIAlertAction(title: "Submit", style: .default) { (_) in
            guard let userIdString = alert.textFields?.first?.text, let email = alert.textFields?.last?.text else{ return}
            print(userIdString)
            print(email)
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func deleteUsers(_ sender: UIButton) {
        print("Delete Tapped")
        let alert = UIAlertController(title: "Delete User", message: nil, preferredStyle: .alert)
        alert.addTextField { (tf) in
            tf.placeholder = "UserID"
        }
        let action = UIAlertAction(title: "Submit", style: .default) { (_) in
            guard let userIdString = alert.textFields?.first?.text else{ return}
            print(userIdString)
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}

