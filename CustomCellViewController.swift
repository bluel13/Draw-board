//
//  CustomCellViewController.swift
//  MyApp08
//
//  Created by user on 2017/6/22.
//  Copyright © 2017年 user. All rights reserved.
//

import UIKit

class CustomCellViewController: UIViewController,
UITableViewDelegate, UITableViewDataSource  {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var tableView: UITableView!
    
    private let mydata = ["item1", "item2", "item3", "item4", "item1", "item2", "item3", "item4", "item1", "item2", "item3", "item4", "item1", "item2", "item3", "item4", "item1", "item2", "item3", "item4"] 
    
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  mydata.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customcell")
        as! CustomTableViewCell
        cell.img.image = UIImage(named: "vvvo.png")
        cell.title.text = mydata[indexPath.row]
        cell.content.text = "1234567"
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
