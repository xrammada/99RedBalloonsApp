//
//  ViewController.swift
//  99RedBalloons
//
//  Created by Adam Marx on 1/24/15.
//  Copyright (c) 2015 Adam Marx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var NumberLabel: UILabel!
    @IBOutlet weak var NextButton: UIBarButtonItem!
    
    var redBalloons : [Balloon] = []
    
    func createBalloons() {
        var imageToSet = UIImage(named:"")
        
        for var i = 0; i < 99; i++ {
            var randomNum = Int(arc4random_uniform(4))
            switch randomNum {
            case 0:
                imageToSet = UIImage(named: "RedBalloon1.jpg")
            case 1:
                imageToSet = UIImage(named: "RedBalloon2.jpg")
            case 2:
                imageToSet = UIImage(named: "RedBalloon3.jpg")
            default:
                imageToSet = UIImage(named: "RedBalloon4.jpg")
            }
            
            var newBalloon = Balloon(number: i, image: imageToSet)
            redBalloons.append(newBalloon)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createBalloons()
        NumberLabel.text = "99 Balloons!"
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func NextButtonPressed(sender: UIBarButtonItem) {
            NumberLabel.text = "Whoa!"
            var randomNum = Int(arc4random_uniform(99))
            ImageView.image = redBalloons[randomNum].image
            NumberLabel.text = String(redBalloons[randomNum].number + 1)
    }

}

