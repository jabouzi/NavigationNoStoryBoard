//
//  MenuView2.swift
//  SlideOut2
//
//  Created by Skander Jabouzi on 2017-12-19.
//  Copyright © 2017 Skander Jabouzi. All rights reserved.
//

import Foundation

import UIKit

class MyView: UIView, UITableViewDataSource, UITableViewDelegate {
    
    var names = ["Brent B/Users/jabousk/Developments/NavigationNoStoryBoard/NavigationNoStoryBoard/MyViewController.swifterg", "Cody Preston", "Kareem Dixon", "Xander Clark",
                 "Francis Frederick", "Carson Hopkins", "Anthony Nguyen", "Dean Franklin",
                 "Jeremy Davenport", "Rigel Bradford", "John Ball", "Zachery Norman",
                 "Valentine Lindsey", "Slade Thornton", "Jelani Dickson", "Vance Hurley",
                 "Wayne Ellison", "Kasimir Mueller", "Emery Pruitt", "Lucius Lawrence",
                 "Kenneth Mendez"]
    
    var tableView: UITableView!
    var selectedIndexPath: IndexPath?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        tableView = UITableView(frame: self.frame)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.allowsSelection   = true
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "NameCell")
        //        let backgoroundTap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: Selector(("DismissKeyboard")))
        //        self.tableView.addGestureRecognizer(backgoroundTap)
        self.addSubview(tableView)
        //        self.frame = self.bounds
        //        self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //        self.frame.size.width = 240
        //        self.frame.size.height = 667
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
        print("Num: \(indexPath.row)")
        print("Value: \(names[indexPath.row])")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Menu"
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.addSubview(tableView)
    }
}
