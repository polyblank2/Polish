//
//  MakeupTableViewController.swift
//  Polish
//
//  Created by Peter Mosher on 5/1/16.
//  Copyright © 2016 Peter Mosher. All rights reserved.
//

import UIKit

class MakeupTableViewController: UITableViewController {

    
    
    
    
    // MARK: Properties
    var makeup =
    [
        "Blush Nars Orgasm Laguna",
        "Blush Mac Coppertone",
        "Foundation Maybelline Fit Me Cappuccino",
        "Foundation Maybelline Fit me Coconut",
        "Garnier BB Cream Deep",
        "Highlighter ELF Gotta Glow",
        "Highlighter Mac Gold Deposit",
        "Highlighter Nars Albatross",
        "Lipstick Kylie Cosmetics 22",
        "Lipstick Kylie Cosmetics Candy K",
        "Lipstick Kylie Cosmetics Dolce K",
        "Lipstick Kylie Cosmetics Mary Jo K",
        "Lipstick Kylie Cosmetics Posie K",
        "Mac Eyebrow Powder Espresso.png",
        "NYX Bronzer Dark Tan",
        "Powder 100 Percent Pure Cocoa",
        "Powder Loreal Infallible Classic Tan",
        "Powder Mac NW 45",
        "Shany cosmetics Blush Fuchsia"
    ]
    
    
    var sampleMakeup = [Makeup]()
    
    
    func loadSampleMakeup() {
        
        for index in 1...makeup.count
        {
            sampleMakeup += [
                Makeup(name: makeup[index-1],
                    description: "Makeup",
                    photo:
                    UIImage(named: "m"+String(index)  )!
                    )!
            ]
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestinationViewController: MakeupViewController! = segue.destinationViewController as! MakeupViewController
        
        if let selectedNailsCell = sender as? MakeupTableViewCell {
            let indexPath = tableView.indexPathForCell(selectedNailsCell)!
            let selectedMakeup = sampleMakeup[indexPath.row]
            DestinationViewController.makeup = selectedMakeup
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadSampleMakeup()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return makeup.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        let item = sampleMakeup[indexPath.row]
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
        
        
        //custom stuff
        //cell.imageView!.layer.cornerRadius = 50
        //let myColor : UIColor = UIColor( red: 0, green: 0, blue: 0, alpha: 255 )
        //cell.imageView!.layer.borderColor = myColor.CGColor;
        //cell.imageView!.layer.borderWidth = 2.0
        
        return cell
    }
    
    
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
