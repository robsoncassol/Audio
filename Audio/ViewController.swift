//
//  ViewController.swift
//  Audio
//
//  Created by Robson Cassol on 31/07/15.
//  Copyright (c) 2015 cassol. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer = AVAudioPlayer()

    @IBOutlet weak var slider: UISlider!
    
    @IBAction func play(sender: AnyObject) {
    
        player.play()
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        player.pause()
        
    }
    
    @IBAction func sliderChanged(sender: AnyObject) {
        player.volume = slider.value
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var audioPath = NSBundle.mainBundle().pathForResource("r_preludio", ofType: "mp3")!
        
        var error: NSError? = nil
        
        player = AVAudioPlayer(contentsOfURL: NSURL(string: audioPath), error: &error)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

