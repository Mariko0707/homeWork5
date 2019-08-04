//
//  ViewController.swift
//  HW5
//
//  Created by Suzuki Mariko on 02/08/2019.
//  Copyright © 2019 Mariko. All rights reserved.
//

import UIKit
import RevealingSplashView

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Initialize a revealing Splash with with the iconImage, the initial size and the background color
        let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "sunflower")!,iconInitialSize: CGSize(width: 70, height: 70), backgroundColor: UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0))

        self.view.addSubview(revealingSplashView)
        
        revealingSplashView.animationType = SplashAnimationType.swingAndZoomOut

        revealingSplashView.startAnimation(){
            print("Completed")
        }
    }


}

