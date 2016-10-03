//
//  ViewController.swift
//  swiftAnimations2
//
//  Created by Cory Howell on 10/2/16.
//  Copyright © 2016 Cory Howell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberOfFishSlider: UISlider!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func animateButtonPressed(_ sender: UIButton) {
        
        let numberOfFish = Int(self.numberOfFishSlider.value)
        for _ in 1...numberOfFish {
            
            let screenSize = UIScreen.main.bounds
            let screenWidth = screenSize.width
            
            let duration = 1.0
            let delay = TimeInterval(900 + arc4random_uniform(100)) / 1000
            let options = UIViewAnimationOptions.curveLinear
            
            let size : CGFloat = CGFloat( arc4random_uniform(40))+20
            let yPosition : CGFloat = CGFloat( arc4random_uniform(200))+20
        
            let fish = UIImageView()
            fish.image = UIImage(named: "blue-fish")
            fish.frame = CGRect(x: 0-size, y: yPosition, width: size, height: size)
            self.view.addSubview(fish)
         
            print(delay)
        
        UIView.animate(withDuration: duration, delay: delay, options: options, animations: {
            
            fish.frame = CGRect(x: screenWidth+20, y: yPosition, width: size, height: size)
            }, completion: { animationFinished in
                fish.removeFromSuperview()
        

    })
        }

}

}

