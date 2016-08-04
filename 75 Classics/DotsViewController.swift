//
//  DotsViewController.swift
//  75 Classics
//
//  Created by Natasha Martinez on 8/4/16.
//  Copyright © 2016 Natasha Mar Publishing. All rights reserved.
//

import UIKit

class DotsViewController: UIViewController {
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let tutorialPageViewController = segue.destinationViewController as? PageViewController {
            tutorialPageViewController.tutorialDelegate = self
        }
    }
}

extension DotsViewController: PageViewControllerDelegate {
    
    func tutorialPageViewController(tutorialPageViewController: PageViewController, didUpdatePageCount count: Int) {
        pageControl.numberOfPages = count
    }
    
    func tutorialPageViewController(tutorialPageViewController: PageViewController, didUpdatePageIndex index: Int) {
        pageControl.currentPage = index
    }
    
}