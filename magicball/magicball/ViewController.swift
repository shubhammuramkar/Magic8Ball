//
//  ViewController.swift
//  magicball
//
//  Created by Apple on 15/01/18.
//  Copyright © 2018 Shubham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    var ball_num : Int = 0
    let ball_dict = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update_ball()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func ASK(_ sender: UIButton) {
        update_ball()
    }
    func update_ball(){
        ball_num = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named : ball_dict[ball_num])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        update_ball()
    }
}

