//
//  IntroViewController.swift
//  DiscoveryApp (Animations)
//
//  Created by  on 12/9/20.
//  Copyright © 2020 ZaCode. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet weak var introStackView: UIStackView!
    
    @IBOutlet weak var introTitleLabel: UILabel!
    
    @IBOutlet weak var introBodyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        introBodyLabel.text = "I found out you could chain together animations from one view controller to another.\n\n Pretty Nice, huh?"
    }
    
    @IBAction func introTapAnimations(_ sender: UITapGestureRecognizer) {
        print("Animating")
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            
            // This translates it the titleLabel to the left or right, depending on the integer value set to "translationX:" and "y:"
            self.introTitleLabel.transform = CGAffineTransform(translationX: -75, y: 0)
        }) { (_) in
            
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                
                self.introTitleLabel.alpha = 0
                self.introTitleLabel.transform = self.introTitleLabel.transform.translatedBy(x: 0, y: -150)
            })
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            
            self.introBodyLabel.transform = CGAffineTransform(translationX: -75, y: 0)
        }) { (_) in
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                
                self.introBodyLabel.alpha = 0
                self.introBodyLabel.transform = self.introTitleLabel.transform.translatedBy(x: 0, y: -150)
                
            }, completion: { (_) in
                self.performSegue(withIdentifier: "circleSegue", sender: self)
            })
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
