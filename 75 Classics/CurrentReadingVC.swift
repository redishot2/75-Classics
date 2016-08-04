//
//  ViewController.swift
//  75 Classics
//
//  Created by Natasha Martinez on 6/29/16.
//  Copyright © 2016 Natasha Mar Publishing. All rights reserved.
//

import UIKit

class CurrentReadingVC: UIViewController {

    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var bookStatus: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Colors
        // Dark purple  #331225
        // Green        #7C9790
        // Flesh        #CCA191
        // Eggshell     #E8D7D0
        // White        #F9F8F4
        
        // #2
        // Mint         #BCD8C9
        // White        #FDFDFD
        // White ish    #E0E1E6
        // Tan          #D8CABD
        // Dark Brown   #1E1007
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func gotoList(sender: AnyObject) {
    
    }
    
    @IBAction func popToTitle(sender: UIStoryboardSegue) {
        self.navigationController?.popToViewController(self, animated: true)
    }
}

