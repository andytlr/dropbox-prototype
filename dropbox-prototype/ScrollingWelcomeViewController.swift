//
//  ScrollingWelcomeViewController.swift
//  dropbox-prototype
//
//  Created by Andy Taylor on 10/21/15.
//  Copyright © 2015 Andy Taylor. All rights reserved.
//

import UIKit

class ScrollingWelcomeViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var tempLabel: UILabel!
    
    func updatePage() {
        let offset = scrollView.contentOffset.x / scrollView.frame.size.width
        tempLabel.text = "\(offset)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        scrollView.contentSize = CGSizeMake(960,568);
        scrollView.showsHorizontalScrollIndicator = false;
        
        updatePage()
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        updatePage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
