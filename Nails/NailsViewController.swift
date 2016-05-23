//
//  NailsViewController.swift
//  Polish
//
//  Created by Peter Mosher on 4/15/16.
//  Copyright © 2016 Peter Mosher. All rights reserved.
//

import UIKit

class NailsViewController: UIViewController {

    
    // MARK - PROPERTIES
    @IBOutlet weak var TheTitle: UILabel!
    
    @IBOutlet weak var TheDescription: UILabel!
    
    @IBOutlet weak var TheImage: UIImageView!
    
    
    var nails: Nails?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TheTitle.delegate = self
        
        //Shows the data
        if let nails = nails {
            TheTitle.text = nails.name
            TheDescription.text = nails.description
            TheImage.image = nails.photo
            
            
            // MARK: Display Code
            
            TheImage.layer.masksToBounds = true;
            TheImage.layer.cornerRadius = 150
            let myColor : UIColor = UIColor( red: 0, green: 0, blue: 0, alpha: 255 )
            TheImage.layer.borderColor = myColor.CGColor;
            TheImage.layer.borderWidth = 2.0
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
