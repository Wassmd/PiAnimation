//
//  ViewController.swift
//  PiAnimation
//
//  Created by Mohammed Wasimuddin on 30.09.19.
//  Copyright © 2019 Wasim. All rights reserved.
//

import UIKit

public class PiAnimationViewController: UIViewController {

    @IBOutlet weak var fan: UIImageView!

    public init() {
        super.init(nibName: "PiAnimationViewController", bundle: Bundle(for: PiAnimationViewController.self))
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func startAnimation(_ sender: Any) {
           let animator = UIViewPropertyAnimator(duration: 5, curve: .easeInOut) {
               for _ in 1...20 {
                   let rotation = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
                   self.fan.transform = self.fan.transform.concatenating(rotation)
               }
           }
           
           animator.startAnimation()
       }
    
}

