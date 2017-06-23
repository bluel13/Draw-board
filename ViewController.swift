//
//  ViewController.swift
//  MyApp08
//
//  Created by user on 2017/6/22.
//  Copyright © 2017年 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func backHere(segue: UIStoryboardSegue) {
        print("back home")
    }
    
    private let mydata = ["猜數字V1", "猜數字V2", "切換場景", "自訂UIView(X)", "簽名板", "自訂Cell的TableView", "item3", "item4", "item1", "item2", "item3", "item4", "item1", "item2", "item3", "item4", "item1", "item2", "item3", "item4"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mydata.count
    }
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
       cell?.textLabel?.text = mydata[indexPath.row]
       return cell!
    }
    
    public func tableView( _ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        gotoVC(whereVC: indexPath.row)
    }
    
    private func gotoVC (whereVC: Int) {
        switch (whereVC) {
        case 5:
            if let vc = storyboard?.instantiateViewController(withIdentifier: "customcellvc") {
            show(vc, sender: self)
            }
            break
        case 4:
            if let vc = storyboard?.instantiateViewController(withIdentifier: "painter") {
                show(vc, sender: self)
            }
            break
        case 2:
            if let vc = storyboard?.instantiateViewController(withIdentifier: "vc2") {
                show(vc, sender: self)
            }
                default:
            break
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
