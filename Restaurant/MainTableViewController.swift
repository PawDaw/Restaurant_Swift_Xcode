//
//  MainTableViewController.swift
//  Restaurant
//
//  Created by paw daw on 02/09/16.
//  Copyright © 2016 paw daw. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController, ENSideMenuDelegate  {
    
    
    
    let data = Data()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 300
        tableView.separatorStyle = UITableViewCellSeparatorStyle.none
        
        self.sideMenuController()?.sideMenu?.delegate = self
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
        
    }

    @IBAction func toggleSideMenu(_ sender: AnyObject) {
     toggleSideMenuView()
    }



    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.places.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainTableViewCell
        
        let entry = data.places[indexPath.row]
        let image = UIImage(named: entry.filename)
        cell.ImageView.image = image
        cell.lableViewImage.text = entry.heading

        return cell
    }
   
}
