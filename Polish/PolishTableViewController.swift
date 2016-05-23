//
//  PolishTableViewController.swift
//  Polish
//
//  Created by Peter Mosher on 4/15/16.
//  Copyright © 2016 Peter Mosher. All rights reserved.
//

import UIKit

class PolishTableViewController: UITableViewController {

    
    
    
    
    
    
    //Text only version
    var products =
    ["Light Reflecting Setting Powder",
    "Lipstick",
    "Mineral Foundation",
    "Blush",
    "Radiant Creamy Concealer",
    "Select Cover-up Concealer",
    "Prep + Prime Highlighter",
    "Lip Gloss",
    "Mascara",
    "Liquid Eyeliner",
    "Eye Shadow",
    "Eyelash Glue",
    "Eyeliner",
    "Eyebrow Pencil",
    "Eye Shadow Primer",
    "Eye Shadow",
    "Eyelashes",
    "Red Nail Polish",
    "Rapid Nail Polish"]
    
    
    //For lack of a better name ;D
    //Also surprised it has global scope, I didn't have to import it!!? :D
    //Producs is a better name, I can change it later...
    var polishes = [Polish]()
    
    
    // var photos = Photo.downloadAllPhotos()
    
    
    
    func loadSamplePolishes() {
        //KISS: Keep it simple stupid... just load a few and see if it works
        let powder  = UIImage(named: "Pressed Powder")!
        let blush   = UIImage(named: "Blush")!
        
        
        
        //variable centric way:
        let photo1 = UIImage(named: "Pressed Powder")!
        let polish1 = Polish(name: "Light Reflectiong Setting Powder",
            description: "Pressed", photo: photo1)!

        let photo2 = UIImage(named: "Blush")!
        let polish2 = Polish(name: "Light Reflectiong Setting Powder",
            description: "Pressed", photo: photo2)!
        
        polishes += [polish1, polish2]
        
        
        //all the data is here
        //Parametric-ish:
        
        polishes += [
            Polish(name: "Blush", description: "Luster", photo:
                UIImage(named: "1")!
            )!,
            Polish(name: "Mineral Foundation", description: "Golden Tan", photo:
                UIImage(named: "2")!
                )!,
            Polish(name: "Select Cover-Up Concealer", description: "NW30", photo:
                UIImage(named: "4")!
                )!,
            Polish(name: "Radiant Creamy Concealer", description: "Custard", photo:
                UIImage(named: "5")!
                )!,
            Polish(name: "Light Reflecting Setting Powder", description: "Transluscent", photo:
                UIImage(named: "6")!
                )!,
            Polish(name: "Lipstick", description: "PureZen", photo:
                UIImage(named: "8")!
                )!,
            Polish(name: "Lip Gloss", description: "Snob", photo:
                UIImage(named: "9")!
                )!,
            Polish(name: "Lipstick", description: "Snob", photo:
                UIImage(named: "10")!
                )!
        
        ]
        

        
        
    }
    
    
    /*
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //if segue.identifier == "ShowDetail" {
            let PolishViewController = segue.destinationViewController as! PolishViewController
            
            // Get the cell that generated this segue.
            if let selectedMealCell = sender as? PolishTableViewCell {
                let indexPath = tableView.indexPathForCell(selectedMealCell)!
                let selectedMeal = polish[indexPath.row]
                PolishViewController.meal = selectedMeal
            }
        
        //}
        //else if segue.identifier == "AddItem" {
        //    print("Adding new meal")
        //}
        
    }
    */
    
    //sends the data to the next controller to be consumed :D
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestinationViewController: PolishViewController! = segue.destinationViewController as! PolishViewController
        
        if let selectedPolishCell = sender as? PolishTableViewCell {
            let indexPath = tableView.indexPathForCell(selectedPolishCell)!
            let selectedPolish = polishes[indexPath.row]
            DestinationViewController.polish = selectedPolish
        }

        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSamplePolishes()

    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return polishes.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        
        //for later
        // Remember to set your "reuseIdentifier"
        //let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        //Text version for fallback:
        /*
        let item = products[indexPath.row]
        
        // Configure the cell...
        cell.textLabel?.text = item
        cell.detailTextLabel?.text = item
        */
        
        
        let item = polishes[indexPath.row]
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = item.description
        //cell.photoImageView = item.photo
        
        //I think this is deprecated, but why?
        cell.imageView?.image = item.photo
        // for circular icons the Corner Radius needs to be half
        // Useful Link: 
        //http://stackoverflow.com/questions/17721934/circular-uiimageview-in-uitableview-without-performance-hit
        //Other stuff that might be nice:
        //cell.imageView!.layer.borderWidth = 1.0f;

        //myTextField.layer.borderColor = myColor.CGColor
        
        //cell.imageView!.layer.masksToBounds = false;
        cell.imageView!.layer.cornerRadius = 50
        let myColor : UIColor = UIColor( red: 0, green: 0, blue: 0, alpha: 255 )
        cell.imageView!.layer.borderColor = myColor.CGColor;
        cell.imageView!.layer.borderWidth = 2.0
        
        

        return cell
    }
    
    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            polishes.removeAtIndex(indexPath.row)
            
            //ADD THIS LATER
            //saveMeals()
            
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
