//
//  SelectWantedGenderViewController.swift
//  together
//
//  Created by Kamal Upasena on 1/2/19.
//  Copyright © 2019 together. All rights reserved.
//

import UIKit

class SelectWantedGenderViewController: UIViewController {
    
    private let kShowBestMatchSegue = "ShowBestMatchSegue"
    
    @IBOutlet weak var lookingForFemale: UIView!
    @IBOutlet weak var lookingForMale: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureFemale = UITapGestureRecognizer(target: self, action: #selector(self.selectGender(sender:)))
        tapGestureFemale.numberOfTapsRequired = 1
        lookingForFemale.isUserInteractionEnabled = true
        lookingForFemale.addGestureRecognizer(tapGestureFemale)
        
        
        let tapGestureMale = UITapGestureRecognizer(target: self, action: #selector(self.selectGender(sender:)))
        tapGestureMale.numberOfTapsRequired = 1
        lookingForMale.isUserInteractionEnabled = true
        lookingForMale.addGestureRecognizer(tapGestureMale)
        
        
        

        // Do any additional setup after loading the view.
    }
    
    @objc func selectGender(sender : UIView){
        self.performSegue(withIdentifier: kShowBestMatchSegue, sender: self)
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
