//
//  PageViewController.swift
//  75 Classics
//
//  Created by Natasha Martinez on 8/4/16.
//  Copyright © 2016 Natasha Mar Publishing. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {
    
    weak var tutorialDelegate: PageViewControllerDelegate?
    
    private(set) lazy var orderedViewControllers: [UIViewController] = {
        return [self.newPageViewController(1), self.newPageViewController(2)]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        delegate = self
        
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController], direction: .Forward, animated: true, completion: nil)
        }
        
        tutorialDelegate?.tutorialPageViewController(self, didUpdatePageCount: orderedViewControllers.count)
    }
    
    private func newPageViewController(cvIndex: Int) -> UIViewController {
        
        let cvIndexNSNumber = cvIndex as NSNumber
        let cvIndexString: String = cvIndexNSNumber.stringValue
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("BookProfile\(cvIndexString)")
    }
}

// MARK: UIPageViewControllerDataSource

extension PageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedViewControllers.indexOf(viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return nil
        }
        
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        
        return orderedViewControllers[previousIndex]
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedViewControllers.indexOf(viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllerCount = orderedViewControllers.count
        
        guard orderedViewControllerCount != nextIndex else {
            return nil
        }
        
        guard orderedViewControllerCount > nextIndex else {
            return nil
        }
        
        return orderedViewControllers[nextIndex]
    }
}

extension PageViewController: UIPageViewControllerDelegate {
    
    func pageViewController( pageViewController: UIPageViewController,
                             didFinishAnimating finished: Bool,
                             previousViewControllers: [UIViewController],
                             transitionCompleted completed: Bool) {
        
        if let firstViewController = viewControllers?.first, let index = orderedViewControllers.indexOf(firstViewController) {
            tutorialDelegate?.tutorialPageViewController(self, didUpdatePageIndex: index)
        }
    }
}

protocol PageViewControllerDelegate: class {
    
    /**
     Called when the number of pages is updated.
     
     - parameter tutorialPageViewController: the TutorialPageViewController instance
     - parameter count: the total number of pages.
     */
    func tutorialPageViewController(tutorialPageViewController: PageViewController,
                                    didUpdatePageCount count: Int)
    
    /**
     Called when the current index is updated.
     
     - parameter tutorialPageViewController: the TutorialPageViewController instance
     - parameter index: the index of the currently visible page.
     */
    func tutorialPageViewController(tutorialPageViewController: PageViewController,
                                    didUpdatePageIndex index: Int)
    
}