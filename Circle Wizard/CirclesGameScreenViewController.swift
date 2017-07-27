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

    @IBOutlet weak var GoBackButtonPressed: UIButton!

    @IBOutlet weak var TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            //let scene = CircleScene(size: view.bounds.size)
            // Set the scale mode to scale to fit the window
           // scene.scaleMode = .aspectFill
            
            // Present the scene
           // view.presentScene(scene)
            
            
           // view.ignoresSiblingOrder = true
            
            //view.showsFPS = true
            //view.showsNodeCount = true
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
