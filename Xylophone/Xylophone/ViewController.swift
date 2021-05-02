//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        // If we aren't sure there is no button without title...
//        if (sender.currentTitle == nil) {
//            return;
//        }
        UIView.animate(withDuration: 0.3) {
                sender.alpha = 0.5
        }
        playSound(soundName: sender.currentTitle! );
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
              //Bring's sender's opacity back up to fully opaque.
            UIView.animate(withDuration: 0.3) {
                      sender.alpha = 1.0
                  }
          }
        
    }
    

    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }


}

