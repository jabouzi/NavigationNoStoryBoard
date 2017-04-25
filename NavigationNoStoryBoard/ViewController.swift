//
//  ViewController.swift
//  NavigationNoStoryBoard
//
//  Created by dev on 4/25/17.
//  Copyright © 2017 Skander Jabouzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let names = ["Brent Berg", "Cody Preston", "Kareem Dixon", "Xander Clark",
                 "Francis Frederick", "Carson Hopkins", "Anthony Nguyen", "Dean Franklin",
                 "Jeremy Davenport", "Rigel Bradford", "John Ball", "Zachery Norman",
                 "Valentine Lindsey", "Slade Thornton", "Jelani Dickson", "Vance Hurley",
                 "Wayne Ellison", "Kasimir Mueller", "Emery Pruitt", "Lucius Lawrence",
                 "Kenneth Mendez"]
    
    var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: view.frame)
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "NameCell")
        view.addSubview(tableView)
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


}

