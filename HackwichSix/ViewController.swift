//
//  ViewController.swift
//  HackwichSix
//
//  Created by Noah Nua on 3/2/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var myFriendsArray = ["Kapolei Kalapawai"]
    var friendsHomeArray = ["Kapolei"]
    var restaurantImageData = [String]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriendsArray.count

   }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        let text = myFriendsArray[indexPath.row]
        cell.textLabel?.text = text
        cell.detailTextLabel?.text = friendsHomeArray[indexPath.row]

        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        restaurantImageData = dict!.object(forKey: "restaurauntImages") as! [String]
        
        
 }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
      
        if segue.identifier == "mySegue"
        {
            let s1 = segue .destination as! detailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
        }
    }
  
    
    
    
    
    
//    var countriesCity = ["Japan", "Ireland", "New Zeland"]
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return countriesCity.count
//    }
   
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//              let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
//              let text = countriesCity[indexPath.row]
//              cell.textLabel?.text = text
//              return cell
//    }
//
//        override func viewDidLoad() {
//            super.viewDidLoad()
        
 

}


