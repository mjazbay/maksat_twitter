//
//  HomeViewController.swift
//  Twitter
//
//  Created by Maksat Zhazbayev on 2/22/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBAction func logOutButtonPressed(_ sender: Any) {
        TwitterAPICaller.client?.logout()
        self.dismiss(animated: true, completion: nil)

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
