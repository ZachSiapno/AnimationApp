//
//  FinalVC.swift
//  DiscoveryApp (Animations)
//
//  Created by  on 12/11/20.
//  Copyright © 2020 ZaCode. All rights reserved.
//

import UIKit

class FinalVC: UIViewController {

    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.isHidden = true
        label2.isHidden = true

        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onClickView))
        self.view.addGestureRecognizer(tapGesture)
    }
    

    @objc func onClickView() {
        print("Listen App, you better work so I can get an A. Yes, I am bullying you App!")
        
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.label1.isHidden = false
            self.label1.transform = CGAffineTransform(translationX: 0, y: 0)
        }) { (_) in
            UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
                self.label2.isHidden = false
                self.label2.transform = CGAffineTransform(translationX: 0, y: 0)
            }, completion: nil)
        }
    }

}
