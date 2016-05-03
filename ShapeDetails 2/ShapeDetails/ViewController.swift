//
//  ViewController.swift
//  ShapeDetails
//
//  Created by Burns, Ryan Thomas on 4/11/16.
//  Copyright © 2016 Burns, Ryan Thomas. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var bools : [Bool] = [false,false,false,false,false,false,false,false]
    var manners : [MannerP] = [
        Manner(color: UIColor.redColor(), name: "Knock Manner",imgName: "knockClosedManner",detail: "Knock on closed doors -- and wait to see if there's a response -- before entering."),
        Manner(color: UIColor.purpleColor(), name: "Please Manner",imgName: "pleaseManner",detail: "When asking for something, say 'Please"),
        Manner(color: UIColor.blueColor(), name: "Mean Name Manner",imgName: "meanNameManner",detail: "Don't call people mean names."),
        Manner(color: UIColor.greenColor(), name: "Thank Manner",imgName: "thankManner",detail: "When receiving something, say 'Thank you.' Be especially appreciative and say 'thank you' for any gift you receive."),
        Manner(color: UIColor.redColor(), name: "Excuse Manner",imgName: "excuseMeManner",detail: "If you do need to get somebody's attention right away, the phrase 'excuse me' is the most polite way for you to enter the conversation."),
        Manner(color: UIColor.redColor(), name: "Quiet Manner",imgName: "quietManner",detail: "Use a quiet voice inside, especially in places like restaurants."),
        Manner(color: UIColor.redColor(), name: "Teasing Manner",imgName: "teasingManner",detail: "Do not make fun of anyone for any reason. Teasing shows others you are weak, and ganging up on someone else is cruel."),
        Manner(color: UIColor.purpleColor(), name: "Mouth Manner",imgName: "mouthManner",detail: "Chew with your mouth closed."),
    ]
    
    
    func sendEmail(email : String)
    {
        var body : String = ""
        if(bools[0])
        {
            body += "I learned how to knock on the door\n"
        }
        print(body)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let cellNib = UINib(nibName: "ShapeTableViewCell", bundle: nil)
        self.tableView.registerNib(cellNib, forCellReuseIdentifier: "shape_cell")
        //summaryButton.enabled = false
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.manners.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let manner = self.manners[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("shape_cell") as! ShapeTableViewCell
        cell.initWithShape(manner)
        let email = NSUserDefaults.standardUserDefaults().objectForKey("email")
        if email != nil{
            //summaryButton.enabled = true
        }
        if !bools[indexPath.row]{
            cell.accessoryType = .None
        }
        else if bools[indexPath.row]
        {
            cell.accessoryType = .Checkmark
        }
        
        return cell
        
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        
        let navVC = self.storyboard!.instantiateViewControllerWithIdentifier("detail_view") as! UINavigationController
        
        let detailVC = navVC.viewControllers[0] as! ShapeDetailViewController
        detailVC.manner = self.manners[indexPath.row]
        
        self.presentViewController(navVC, animated: true, completion: nil)
        
        if let cell = tableView.cellForRowAtIndexPath(indexPath)
        {
            if cell.accessoryType == .Checkmark
            {
                cell.accessoryType = .None
                bools[indexPath.row] = false
            }
            else
            {
                cell.accessoryType = .Checkmark
                bools[indexPath.row] = true
            }
        }
    }
    
    
}

