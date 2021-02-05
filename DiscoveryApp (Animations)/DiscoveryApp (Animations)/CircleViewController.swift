//
//  CircleViewController.swift
//  DiscoveryApp (Animations)
//
//  Created by  on 12/10/20.
//  Copyright © 2020 ZaCode. All rights reserved.
//

import UIKit

class CircleViewController: UIViewController {
    
    let myView = UIImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 400))
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myView.image = UIImage(named: "Facemask")
        view.addSubview(myView)
        myView.center = view.center
    }
    
    
    @IBAction func animateView(_ sender: UIButton) {
        UIView.animate(withDuration: 1, animations: {
            self.myView.frame = CGRect(x: 0, y: 0, width: 400, height: 700)
            self.myView.center = self.view.center
        }, completion: { done in
            if done {
                UIView.animate(withDuration: 1, animations: {
                    self.myView.frame = CGRect(x: 0, y: 0, width: 300, height: 400)
                    self.myView.center = self.view.center
                })
            }
        })
    
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "finalSegue" {
            let confirm = segue.destination as? FinalVC
        }
    }

}
