//
//  BookProfileVC.swift
//  75 Classics
//
//  Created by Natasha Martinez on 6/29/16.
//  Copyright © 2016 Natasha Mar Publishing. All rights reserved.
//

import UIKit

class BookProfileVC: UIViewController {
    
    // Page Indicators
    var pageIndicators = [UIImageView]()
    @IBOutlet weak var pageIndicator1: UIImageView!
    @IBOutlet weak var pageIndicator2: UIImageView!
    
    // Pages
    var contents = [UIView]()
    @IBOutlet weak var infoView:    UIView!
    @IBOutlet weak var descView:  UIView!
    
    // Page 1 Content
    @IBOutlet weak var bookImage:   UIImageView!
    @IBOutlet weak var titleLabel:  UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var yearLabel:   UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    // Page 2 Content
    @IBOutlet weak var descLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Save the content arrays for later
        self.contents       = [self.infoView,       self.descView]
        self.pageIndicators = [self.pageIndicator1, self.pageIndicator2]
        
        // Add in the content
        self.setUpData()
        
        // Set up lined up screens
        self.alignScreens(0)
        
        // Set up swipe left and right gestures
        self.setUpGestures()
    }
    
    func setUpData() {
        
        // TODO : get book data
        
        
        // Fill in book info
        self.titleLabel.text  = "Harry Potter and the Half Blood Prince"
        self.authorLabel.text = "Written by, " + "JK Rowling"
        self.yearLabel.text   = "c." + "2000"
        self.statusLabel.text = "READ"
        self.descLabel.text   = "Things have never been easy for Oscar, a sweet but disastrously overweight ghetto nerd, a New Jersey romantic who dreams of becoming the Dominican J.R.R. Tolkien and, most of all, of finding love. But he may never get what he wants, thanks to the fukú — the ancient curse that has haunted Oscar's family for generations, dooming them to prison, torture, tragic accidents, and, above all, ill-starred love. Oscar, still dreaming of his first kiss, is only its most recent victim - until the fateful summer that he decides to be its last.\n\nWith dazzling energy and insight, Junot Díaz immerses us in the uproarious lives of our hero Oscar, his runaway sister Lola, and their ferocious beauty-queen mother Belicia, and in the epic journey from Santo Domingo to Washington Heights to New Jersey's Bergenline and back again. Rendered with uncommon warmth and humor, The Brief Wondrous Life of Oscar Wao presents an astonishing vision of the contemporary American experience and the endless human capacity to persevere - and to risk it all - in the name of love."
    }
    
    func alignScreens(showingIndex: Int) {
        
        // For screens that come before
        
        // The screen
        
        // For screens that come after
        
    }
    
    func setUpGestures() {
        
    }
}
