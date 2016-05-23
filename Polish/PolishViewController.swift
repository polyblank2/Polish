//
//  PolishViewController.swift
//  Polish
//
//  Created by Peter Mosher on 4/15/16.
//  Copyright © 2016 Peter Mosher. All rights reserved.
//

import UIKit

class PolishViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    
    
    
    
    
    
    
    
    // MARK: PROPERTIES
    
    @IBOutlet weak var TheTitle: UILabel!
    @IBOutlet weak var ThePhoto: UIImageView!
    //@IBOutlet weak var TheDescription: UILabel!
    @IBOutlet weak var TheDescription: UILabel!
    
    
    
    var polish: Polish?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //TheTitle.delegate = self
        
        //Shows the data
        if let polish = polish {
            TheTitle.text = polish.name
            TheDescription.text = polish.description
            ThePhoto.image = polish.photo
            
            // MARK: Display Code
            
            ThePhoto.layer.masksToBounds = true;
            ThePhoto.layer.cornerRadius = 150
            let myColor : UIColor = UIColor( red: 0, green: 0, blue: 0, alpha: 255 )
            ThePhoto.layer.borderColor = myColor.CGColor;
            ThePhoto.layer.borderWidth = 2.0
        }
    }
    
    
    /*
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       // if saveButton === sender {
        let name   = TheTitle.text ?? ""
        let description = TheDescription.text ?? ""
        let photo  = ThePhoto.image
        
        polish = Polish(name: name, description: description, photo: photo)
            
        //}
        
    }
    */
    
    
    @IBAction func selectImageFromPhotoLibrary(sender: UITapGestureRecognizer) {
        // I guess we always do this first
        // Hide the keyboard.
        
        //nameTextField.resignFirstResponder()
        
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        
        // I would prefer to do both, how do I look at documentation of code again?
        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .PhotoLibrary
        
        // Current scope is from the ViewController (self is the ViewController)
        imagePickerController.delegate = self
        
        // Seriously, what does this do? IMO this is a "Magic Function"
        // it's probably for animation
        presentViewController(imagePickerController, animated: true, completion: nil)
    }
    
    

    /*
    @IBAction func selectImageFromPhotoLibrary(sender: UITapGestureRecognizer) {
    // I guess we always do this first
    // Hide the keyboard.
    
    nameTextField.resignFirstResponder()
    
    // UIImagePickerController is a view controller that lets a user pick media from their photo library.
    let imagePickerController = UIImagePickerController()
    
    // I would prefer to do both, how do I look at documentation of code again?
    // Only allow photos to be picked, not taken.
    imagePickerController.sourceType = .PhotoLibrary
    
    // Current scope is from the ViewController (self is the ViewController)
    imagePickerController.delegate = self
    
    // Seriously, what does this do? IMO this is a "Magic Function"
    // it's probably for animation
    presentViewController(imagePickerController, animated: true, completion: nil)
    }
    */
    
    
    
    
    
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        // Set photoImageView to display the selected image.
        ThePhoto.image = selectedImage
        
        // Dismiss the picker.
        dismissViewControllerAnimated(true, completion: nil)
    }
    //*/
    
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
