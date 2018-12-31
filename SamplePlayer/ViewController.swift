//
//  ViewController.swift
//  SamplePlayer
//
//  Created by Herb on 2018-11-28.
//  Copyright © 2018 Herb. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPLayer = AVAudioPlayer();
    var isPlaying: Bool = false;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let song = Bundle.main.path(forResource: "Song1", ofType: "m4a")
        
        do {
            audioPLayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: song!))
        }
        catch {
            print(error)
        }
    }

    @IBAction func playButton(_ sender: UIButton) {
        if !isPlaying
        {
            audioPLayer.play()
            isPlaying = true
        } else {
            audioPLayer.stop()
            isPlaying = false
        }
        
    }
    
}

