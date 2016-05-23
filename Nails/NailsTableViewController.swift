//
//  NailsTableViewController.swift
//  Polish
//
//  Created by Peter Mosher on 4/15/16.
//  Copyright © 2016 Peter Mosher. All rights reserved.
//

import UIKit

class NailsTableViewController: UITableViewController {

    
    // MARK: Properties
    var nails =
    [
        "Sephora",
        "Essie",
        "OPI",
        "Salley Henson",
        "Savina",
        "Sinful Colors",
        "Wet n wiled",
        "Orly"
    ]
    
    
    var nails2 =
    [
        "Essie A Crewed Interest Pink",
        "Essie Adore A Ball Off White",
        "Essie Angel Food Sheer Pink",
        "Essie Ballet Slippers Pink",
        "Essie Brides to be Pink",
        "Essie Bump up the Pumpts Orange Pink",
        "Essie Devil's Advocate Purple",
        "Essie Double Breasted Jacket Pink",
        "Essie East Hampton Cottage Off White",
        "Essie Headmistress Red",
        "Essie Lady Like Purple Pink",
        "Essie Minimalistic Pink",
        "Essie Petal Pink Pink",
        "Essie Pink Glove Service   Pink",
        "Essie Romper Room Pink",
        "Essie Sheer Bliss Pink",
        "Essie Style Hunter Red",
        "Essie Sugar Daddy Pink",
        "Essie The Girls Are Out Purple Pink",
        "Essie Too Too Hot Red",
        "Essie Tying The Knotie Pink",
        "Essie Van d'go Pink",
        "Essie Very Cranberry Red.png",
        "Essie Waltz sheer white",
        "Essie go genza Purple",
        "OPI Alpine Snow White",
        "OPI Cajun Shrimp Orange Red",
        "OPI Care to Danse Purple",
        "OPI I think in pink Pink",
        "OPI Lucky Lucky Lavendar Purple",
        "OPI Manicurist of Seville Red",
        "OPI Mod About You Pink",
        "Orly Pure porcelain Pink",
        "Sally Hansen Pink A Colada Pink",
        "Sally Hansen Shall we dance Pink",
        "Savina White Lavender Pink.png",
        "Sephora by OPI Havana Dreams Blue",
        "Sephora by OPI What aura gonna wear Pink",
        "Sinful Colors Easy going Pink",
        "Sinful Colors Soul Mate Pink",
        "Wet n wild I red a good book Red",
        "Wet n wild Under Cover Pink"
    ]
    
    
    //25 Essie
    //
    var essie =
    [
        "A Crewed Interest Pink",
        "Adore A Ball Off White",
        "Angel Food Sheer Pink",
        "Ballet Slippers Pink",
        "Brides to be Pink",
        "Bump up the Pumpts Orange Pink",
        "Devil's Advocate Purple",
        "Double Breasted Jacket Pink",
        "East Hampton Cottage Off White",
        "Headmistress Red",
        "Lady Like Purple Pink",
        "Minimalistic Pink",
        "Petal Pink Pink",
        "Pink Glove Service   Pink",
        "Romper Room Pink",
        "Sheer Bliss Pink",
        "Style Hunter Red",
        "Sugar Daddy Pink",
        "The Girls Are Out Purple Pink",
        "Too Too Hot Red",
        "Tying The Knotie Pink",
        "Van d'go Pink",
        "Very Cranberry Red.png",
        "Waltz sheer white",
        "go genza Purple"
    ]
    
    //7 OPI
    var OPI =
    [
        "Alpine Snow White",
        "Cajun Shrimp Orange Red",
        "Care to Danse Purple",
        "I think in pink Pink",
        "Lucky Lucky Lavendar Purple",
        "Manicurist of Seville Red",
        "Mod About You Pink"
    ]
    
    //1 Orly
    var Orly =
    [
        "Orly Pure porcelain Pink"
    ]
    
    //2 Sally
    var Sally =
    [
        "Hansen Pink A Colada Pink",
        "Hansen Shall we dance Pink"
    ]
    
    //1 Savina
    var Savina =
    [
        "Savina White Lavender Pink.png"
    ]
    
    //1 Sephora by Havana Dreams 
    //1 Sephora by What aura
    var Sephora =
    [
        "Blue",
        "gonna wear Pink"
    ]
    
    //Sinful Colors
    var SinfulColors =
    [
        "Easy going Pink",
        "Soul Mate Pink"
    ]
    
    //Wet n wild
    var WetNWild =
    [
        "I red a good book Red",
        "Under Cover Pink"
    ]
    
    
    var nails3 = [Nails]()
    
    func loadSampleNails() {
    
        /*
        nails3 += [
            Nails(name: nails2[0], description: "Essie", photo:
                UIImage(named: "e01")!
                )!,
            Nails(name: nails2[1], description: "Essie", photo:
                UIImage(named: "e02")!
                )!
        ]
        */
        
        
        //Essie
        for index in 1...essie.count
        {
            nails3 += [
                Nails(name: essie[index-1],
                    description: "Essie",
                    photo:
                    UIImage(named: "e"+String(index)  )!
                    )!
            ]
        }
        
        for index in 1...OPI.count
        {
            nails3 += [
                Nails(name: OPI[index-1],
                    description: "OPI",
                    photo:
                    UIImage(named: "o"+String(index)  )!
                    )!
            ]
        }
        
        for index in 1...Orly.count
        {
            nails3 += [
                Nails(name: Orly[index-1],
                    description: "Orly",
                    photo:
                    UIImage(named: "or"+String(index)  )!
                    )!
            ]
        }
        

        for index in 1...Sally.count
        {
            nails3 += [
                Nails(name: Sally[index-1],
                    description: "Sally",
                    photo:
                    UIImage(named: "s"+String(index)  )!
                    )!
            ]
        }
        
        for index in 1...Savina.count
        {
            nails3 += [
                Nails(name: Savina[index-1],
                    description: "Savina",
                    photo:
                    UIImage(named: "sav"+String(index)  )!
                    )!
            ]
        }
        
        for index in 1...Sephora.count
        {
            nails3 += [
                Nails(name: Sephora[index-1],
                    description: "Sephora",
                    photo:
                    UIImage(named: "s"+String(index)  )!
                    )!
            ]
        }
        
        for index in 1...SinfulColors.count
        {
            nails3 += [
                Nails(name: SinfulColors[index-1],
                    description: "Sinful Colors",
                    photo:
                    UIImage(named: "si"+String(index)  )!
                    )!
            ]
        }
        
        for index in 1...WetNWild.count
        {
            nails3 += [
                Nails(name: WetNWild[index-1],
                    description: "Wet N Wild",
                    photo:
                    UIImage(named: "w"+String(index)  )!
                    )!
            ]
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestinationViewController: NailsViewController! = segue.destinationViewController as! NailsViewController
        
        if let selectedNailsCell = sender as? NailsTableViewCell {
            let indexPath = tableView.indexPathForCell(selectedNailsCell)!
            let selectedNails = nails3[indexPath.row]
            DestinationViewController.nails = selectedNails
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadSampleNails()
        
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
        return nails3.count
    }

    
    //dequeueReusableCellWithIdentifier
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {


        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        let item = nails3[indexPath.row]
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
