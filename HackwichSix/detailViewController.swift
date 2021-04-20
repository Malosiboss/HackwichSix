//
//  detailViewController.swift
//  HackwichSix
//
//  Created by Noah Nua on 4/20/21.
//

import UIKit

class detailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var imagePass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
    }
    

  

}
}
