//
//  MyViewController.swift
//  NavigationNoStoryBoard
//
//  Created by Skander Jabouzi on 2018-01-25.
//  Copyright © 2018 Skander Jabouzi. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
    
    var myView: MyView!
    var mapView: MapView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My Map"
//        myView = MyView(frame: CGRect(x: 0, y: 0, width: 240, height: 667))
        mapView = MapView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
//        self.view.addSubview(myView)
        self.view.addSubview(mapView)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
