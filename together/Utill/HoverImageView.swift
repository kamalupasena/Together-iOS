//
//  HoverImage.swift
//  together
//
//  Created by Kamal Upasena on 1/1/19.
//  Copyright © 2019 together. All rights reserved.
//

import UIKit

class HoverImageView: UIImageView {

    override init(image: UIImage?) {
        super.init(image: image)
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
        
       DispatchQueue.main.asyncAfter(deadline: .now()) {
            self.addHoverAnimation()
        }
    }
    
    
    
    fileprivate func addHoverAnimation() {
        let hover = CABasicAnimation(keyPath: "position")
        
        hover.isAdditive = true
        
        hover.fromValue = NSValue(cgPoint: CGPoint.zero)
        hover.toValue = NSValue(cgPoint: CGPoint(x: 0.0, y: 10.0))
        hover.autoreverses = true
        hover.duration = 0.2
        hover.repeatCount = Float.infinity
        
        self.layer.add(hover, forKey: "HoverAnimation")
    }
    
    public func stopHoverAnimation(){
        self.layer.removeAllAnimations()
    }
    
    
    

}
