//
//  MarioKartViewController.swift
//  mario kart
//
//  Created by Mantaqaa Khan on 3/8/19.
//  Copyright © 2019 Mantaqaa Khan. All rights reserved.
//

import UIKit

class MarioKartViewController: UIViewController {

    @IBOutlet weak var kartView0: UIImageView!
    
    @IBOutlet weak var kartView1: UIImageView!
    
    @IBOutlet weak var kartView2: UIImageView!
    
    @IBOutlet weak var kartView3: UIImageView!
    
    @IBOutlet weak var kartView4: UIImageView!
    
     var startingPointKartView0 = CGPoint()
     var startingPointKartView1 = CGPoint()
     var startingPointKartView2 = CGPoint()
     var startingPointKartView3 = CGPoint()
     var startingPointKartView4 = CGPoint()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startingPointKartView0 = kartView0.center
        startingPointKartView1 = kartView1.center
        startingPointKartView2 = kartView2.center
        startingPointKartView3 = kartView3.center
        startingPointKartView4 = kartView4.center
        
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: view)
        print("Location: x: \(location.x), y: \(location.y)")
        let kartView = sender.view!
        kartView.center = location

    }
    
    @IBAction func didPinchKartView(_ sender: UIPinchGestureRecognizer) {
        let scale = sender.scale
        print("scale:\(scale)!")
        
        let kartView=sender.view!
        kartView.transform = CGAffineTransform(scaleX: scale, y: scale)

    }
    
    @IBAction func didRotateKartView(_ sender: UIRotationGestureRecognizer) {
        let rotation = sender.rotation
        print("rotation: \(rotation)")

        
    }
    
    @IBAction func didTapKartView(_ sender: UITapGestureRecognizer) {
        let KartView = sender.view!
        
        UIView.animate(withDuration: 0.6) {
         KartView.center.x += 400
        }
       

    }
    
    @IBAction func didLongPressBackground(_ sender: UILongPressGestureRecognizer) {
        
        UIView.animate(withDuration: 0.8)
        {
            self.kartView0.center = self.startingPointKartView0
            self.kartView1.center = self.startingPointKartView1
            self.kartView2.center = self.startingPointKartView2
            self.kartView3.center = self.startingPointKartView3
            self.kartView4.center = self.startingPointKartView4
            
            self.kartView0.transform = CGAffineTransform.identity
            self.kartView1.transform = CGAffineTransform.identity
            self.kartView2.transform = CGAffineTransform.identity
            self.kartView3.transform = CGAffineTransform.identity
            self.kartView4.transform = CGAffineTransform.identity

        }
       
    }
    
    
}
