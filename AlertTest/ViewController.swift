//
//  ViewController.swift
//  AlertTest
//
//  Created by 張智涵 on 2016/6/13.
//  Copyright © 2016年 張智涵 Vincent Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showAlert(sender: AnyObject) {
        let alert = UIAlertController(title: "Alert", message: "想談戀愛嗎？", preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: "No", style: .Cancel, handler: nil)
         alert.addAction(cancelAction)
        
        
        
        
        
        let okActionHandler = { (action: UIAlertAction!) -> Void in
            let okOption = UIAlertController(title: "你想跟誰談戀愛？", message: "在以下的人選中選一個你想談戀愛的對象", preferredStyle: .ActionSheet)
            okOption.addAction(UIAlertAction(title: "Kate Upton", style: .Default, handler: nil))
            okOption.addAction(UIAlertAction(title: "Emily Clarke", style: .Default, handler: nil))
            okOption.addAction(UIAlertAction(title: "Candice Swanepoel", style: .Default, handler: nil))
            okOption.addAction(UIAlertAction(title: "Clara Lee", style: .Default, handler: nil))
            okOption.addAction(UIAlertAction(title: "Kim Hyuna", style: .Default, handler: nil))
            self.presentViewController(okOption, animated: true, completion: nil)
        }
        
        
        
        
        let okAction = UIAlertAction(title: "Yes", style: .Default, handler: okActionHandler)
        alert.addAction(okAction)
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
}

