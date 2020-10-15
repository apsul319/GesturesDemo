//
//  ViewController.swift
//  GesturesDemo
//
//  Created by  on 10/15/20.
//  Copyright © 2020 man. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func imageviewTapped(_ sender: UITapGestureRecognizer) {
        print("Shara Ishvalda")
    }
    
    @IBAction func dragonPanned(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: view)

        // 2
        guard let gestureView = sender.view else {
          return
        }

        gestureView.center = CGPoint(
          x: gestureView.center.x + translation.x,
          y: gestureView.center.y + translation.y
        )

        // 3
        sender.setTranslation(.zero, in: view)
    }
}

