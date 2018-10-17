//
//  ViewController.swift
//  TableViewss
//
//  Created by GadgetZone on 10/18/18.
//  Copyright © 2018 GadgetZone. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    // now lets do coding part :3

    @IBOutlet weak var tbleviews: UITableView!
    
    let arrays = ["siddhant","nigam","ios","android","php"] // this all will be displayed in table view.
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // in table view 2imp things
        // UItableviewdelegate and datasource
        
        tbleviews.delegate = self
        tbleviews.dataSource = self // not imp if u took delegate and datasource from main.storyboard :)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrays.count // number of items to be displayed in table view
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : TableViewCell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.lbl1.text = arrays[indexPath.row] //array to be printed in a proper sequence
        return cell // lets build it
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("clicked on \(indexPath.row)")
    }
    // lets run it and see how it looks :D
    // let see how to increase the height of cell
    
    // way 1 from main.story board
    // way 2
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
}

