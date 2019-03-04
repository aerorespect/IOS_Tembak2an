//
//  GameViewController.swift
//  ColorSwitch
//
//  Created by Fandrian Rhamadiansyah on 3/1/19.
//  Copyright © 2019 Fandrian Rhamadiansyah. All rights reserved.
//

import UIKit
import SpriteKit
import AVFoundation

class GameViewController: UIViewController {
    
    var backingAudio = AVAudioPlayer()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let filePath = Bundle.main.path(forResource: "TipsyPrimadonna", ofType: "wav")
        let audioNSURL = NSURL.init(fileURLWithPath: filePath!)
        
        do { backingAudio = try AVAudioPlayer(contentsOf: audioNSURL as URL)}
        catch { return print("cannot find the audio")}
        
        backingAudio.numberOfLoops = -1
        backingAudio.play()
        
        

        if let view = self.view as! SKView? {
            let scene = MainMenuScene(size: CGSize(width:1536, height:2048))
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }


    }

