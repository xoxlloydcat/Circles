//
//  CirclesGameScreenViewController.swift
//  Circle Wizard
//
//  Created by iD Student on 7/25/17.
//  Copyright © 2017 iD Student. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class CirclesGameScreenViewController: UIViewController {
    

    @IBAction func CircleButtonPressed(_ sender: Any) {
        (sender as AnyObject).setImage(UIImage(named: "rainbowCircle"), for: UIControlState())
    }
    
    @IBOutlet weak var GoBackButtonPressed: UIButton!

    @IBOutlet weak var TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }

        
        // Do any additional setup after loading the view.
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
