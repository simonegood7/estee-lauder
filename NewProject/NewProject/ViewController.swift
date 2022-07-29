//
//  ViewController.swift
//  NewProject
//
//  Created by scholar on 7/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var location = CGPoint(x: 0, y: 0)
    var counter = 0
    @IBOutlet weak var serum: UIImageView!
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?){
    
        var imageView: UIImageView! {
            didSet {
                imageView.isUserInteractionEnabled = true
                imageView.image = UIImage(named: "serum")
                let touch : UITouch! = touches.first!
                location = touch.location(in:self.view)
                self.serum.center = location
        }
    }
}
    @IBAction func button(_ sender: UIButton) {
        counter += 1
        label.text = "\(counter)"
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        
        func viewDidLoad() {
        super.viewDidLoad()

// Do any additional setup after loading the view.
        }
    }
}
