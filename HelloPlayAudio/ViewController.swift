//
//  ViewController.swift
//  HelloPlayAudio
//
//  Created by 王冊 on 2020/10/28.
//  Copyright © 2020 shanshan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer:AVAudioPlayer?

    @IBAction func play(_ sender: UIButton) {
        audioPlayer?.play()
        audioPlayer?.currentTime = 0
        audioPlayer?.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //find sound path
        if let path = Bundle.main.path(forResource: "Right", ofType: "mp3"){
            //path to url
            let url = URL(fileURLWithPath: path)
            //make an audio player
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.enableRate = true
                //audioPlayer?.rate = 2.0
                audioPlayer?.numberOfLoops = 3
                audioPlayer?.volume = 0.5
            }catch{
         
            }
            
        }
    }
}

