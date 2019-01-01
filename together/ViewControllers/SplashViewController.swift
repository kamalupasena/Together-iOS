//
//  SplashViewController.swift
//  together
//
//  Created by Kamal Upasena on 1/2/19.
//  Copyright © 2019 together. All rights reserved.
//

import UIKit
import Hero

class SplashViewController: UIViewController {
    
    private let kSelectGenderSegue = "SelectGenderSegue"

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
            
            self.navigationController?.hero.isEnabled = true
            self.navigationController?.hero.navigationAnimationType = .zoom
            self.performSegue(withIdentifier: self.kSelectGenderSegue, sender: self)
        }
        
        
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
