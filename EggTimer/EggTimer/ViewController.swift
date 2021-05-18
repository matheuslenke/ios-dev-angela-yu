//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    let eggTimes: [String : Int] = [ "Soft": 3, "Medium": 420, "Hard": 720]
    var timer: Timer?
    var totalTime = 0
    var secondsPassed = 0
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    var player: AVAudioPlayer?
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        titleLabel.text = "Making your egg!"
        timer?.invalidate()
        progressBar.progress = 0.0
        secondsPassed = 0
        totalTime = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            let progress: Float = Float(secondsPassed) / Float(totalTime)
            progressBar.progress = progress
            secondsPassed+=1
        } else {
            titleLabel.text = "Done!"
            timer?.invalidate()
            progressBar.progress = 1.0
            playSound()
        }
    }
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else { return }

         do {
             try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
             try AVAudioSession.sharedInstance().setActive(true)

             /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

             /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

             guard let player = player else { return }

             player.play()

         } catch let error {
             print(error.localizedDescription)
         }
    }
    
}
