//
//  VC4.swift
//  MyApp08
//
//  Created by user on 2017/6/23.
//  Copyright © 2017年 user. All rights reserved.
//

import UIKit

class VC4: UIViewController {
    @IBAction func govc2(_ sender: Any) {
        let vc2 = storyboard?.instantiateViewController(withIdentifier: "vc2")
        show(vc2!, sender: self)
    }

    @IBAction func govc3(_ sender: Any) {
        let vc3 = storyboard?.instantiateViewController(withIdentifier: "vc3")
        show(vc3!, sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
