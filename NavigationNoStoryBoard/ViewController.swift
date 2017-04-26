//
//  ViewController.swift
//  NavigationNoStoryBoard
//
//  Created by dev on 4/25/17.
//  Copyright © 2017 Skander Jabouzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, NameControllerDelegate {
    
    var names = ["Brent Berg", "Cody Preston", "Kareem Dixon", "Xander Clark",
                 "Francis Frederick", "Carson Hopkins", "Anthony Nguyen", "Dean Franklin",
                 "Jeremy Davenport", "Rigel Bradford", "John Ball", "Zachery Norman",
                 "Valentine Lindsey", "Slade Thornton", "Jelani Dickson", "Vance Hurley",
                 "Wayne Ellison", "Kasimir Mueller", "Emery Pruitt", "Lucius Lawrence",
                 "Kenneth Mendez"]
    
    var tableView: UITableView!
    var selectedIndexPath: IndexPath?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: view.frame)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "NameCell")
        view.addSubview(tableView)
        self.navigationItem.title = "Main"
        changeLeftBarButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell")!
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nameVC = NameController()
        nameVC.fullName = names[indexPath.row]
        nameVC.delegate = self
        selectedIndexPath = indexPath
        tableView.deselectRow(at: indexPath, animated: true)
        self.navigationController?.pushViewController(nameVC, animated: true)
    }
    
    func nameController(nameVC: NameController, didSaveName name: String) {
        if let indexPath = selectedIndexPath {
            names[indexPath.row] = name
            tableView.reloadRows(at: [indexPath], with: .automatic)
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    func changeLeftBarButton() {
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
    }


}

