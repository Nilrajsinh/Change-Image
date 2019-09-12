//
//  ViewController.swift
//  Change Image
//
//  Created by Nilrajsinh Vaghela on 12/09/19.
//  Copyright © 2019 Cyphers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var NextHide: UIButton!
    
    @IBOutlet weak var BackHide: UIButton!
    
    
    
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var Label: UILabel!
    
    
    
    @IBOutlet weak var ImageName: UILabel!
    
    var Image = 0
    
    @IBAction func Next(_ sender: UIButton) {
        Image += 1
        Label.text = String("\(Image)")
        
        self.imageGallary()
        
    
    }
    
    
    @IBAction func Back(_ sender: Any) {
        Image -= 1
        Label.text = String("\(Image)")
       self.imageGallary()
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Image = 1
        Label.text = String("\(Image)")
        
        
        // Do any additional setup after loading the view.
    }
    
    func imageGallary()  {
        if Image == 1 {
            BackHide.isEnabled = false
            ImageView.image = UIImage(named: "Image1.jpg")
            
        }
        if Image == 2 {
            BackHide.isEnabled = true
            ImageView.image = UIImage(named: "Image2.jpg")
            
        }
        if Image == 3 {
           
            ImageView.image = UIImage(named: "Image3.jpg")
            
        }
        if Image == 4 {
            NextHide.isEnabled = true
            ImageView.image = UIImage(named: "Image4.jpg")
            
        }
        if Image == 5 {
            NextHide.isEnabled = false
            ImageView.image = UIImage(named: "Image5.jpeg")
            
        }
        
    }


}

