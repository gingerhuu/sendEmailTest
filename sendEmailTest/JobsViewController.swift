//
//  JobsViewController.swift
//  sendEmailTest
//
//  Created by Mingxin Wang on 7/27/20.
//  Copyright © 2020 Ginger Hu. All rights reserved.
//

import UIKit

class JobsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        jobsSubject.delegate = self
        jobsBody.delegate = self
    }

    @IBAction func jobsSubject(_ sender: Any) {
    }
    
    // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
