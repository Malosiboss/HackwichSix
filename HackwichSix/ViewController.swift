//
//  ViewController.swift
//  HackwichSix
//
//  Created by Noah Nua on 3/2/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

//   var myFriendsArray = ["Kaleb", "Autin", "ABBZ"]
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return myFriendsArray.count

//   }
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
//        let text = myFriendsArray[indexPath.row]
//        cell.textLabel?.text = text
//        return cell
//    }

//    override func viewDidLoad() {
//        super.viewDidLoad()
//         Do any additional setup after loading the view.
//    }
    
    var countriesCity = ["Japan", "Ireland", "New Zeland"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countriesCity.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
              let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
              let text = countriesCity[indexPath.row]
              cell.textLabel?.text = text
              return cell
    }
        
        override func viewDidLoad() {
            super.viewDidLoad()
        
 

}

}
