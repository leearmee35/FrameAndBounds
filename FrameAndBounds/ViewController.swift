//
//  ViewController.swift
//  FrameAndBounds
//
//  Created by Ian Li on 11/30/16.
//  Copyright © 2016 Ian Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    
    @IBOutlet weak var frameX: UILabel!
    @IBOutlet weak var frameY: UILabel!
    @IBOutlet weak var boundsX: UILabel!
    @IBOutlet weak var boundsY: UILabel!
    
    @IBOutlet weak var frameXSlider: UISlider!
    @IBOutlet weak var frameYSlider: UISlider!
    
    @IBOutlet weak var boundsXSlider: UISlider!
    @IBOutlet weak var boundsYSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeFrameX(_ sender: Any) {
        containerView.frame.origin.x = CGFloat(frameXSlider.value)
        updateLabels()
    }
    
    
    @IBAction func changeFrameY(_ sender: Any) {
        containerView.frame.origin.y = CGFloat(frameYSlider.value)
        updateLabels()
    }

    @IBAction func changeBoundsX(_ sender: Any) {
        containerView.bounds.origin.x = CGFloat(boundsXSlider.value)
        updateLabels()
    }
    
    @IBAction func changeBoundsY(_ sender: Any) {
        
        containerView.bounds.origin.y = CGFloat(boundsYSlider.value)
        updateLabels()
    }
    
    func updateLabels() {
        frameX.text = "Frame x = \(Int(containerView.frame.origin.x))"
        frameY.text = "Frame y = \(Int(containerView.frame.origin.y))"
        boundsX.text = "Bounds x = \(Int(containerView.bounds.origin.x))"
        boundsY.text = "Bounds y = \(Int(containerView.bounds.origin.y))"
    }
}

