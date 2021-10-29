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
    // MARK: - Constants
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7] // In seconds -> 5, 7, 12 minutes

    var secondsPassed = 0
    var totalTime = 0
    
    var timer = Timer()
    
    let eTextDone = "Your eggs are done!"
    let eTextStart = "How do you like your eggs?"
    var player: AVAudioPlayer!
    let alarmSound = "alarm_sound"
    let extSound = "mp3"


    // MARK: - IBOutlets
    @IBOutlet weak var eTextLBL: UILabel!
    @IBOutlet weak var barPV: UIProgressView!
    
    
    // MARK: - IBActions
    @IBAction func eggTimerBTN(_ sender: UIButton) {
        timer.invalidate()
        
        
        eTextLBL.text = eTextStart
        
        let hardness = sender.currentTitle! // Soft, Medium, Hard
        totalTime = eggTimes[hardness]!
        
        barPV.progress = 0.0
        secondsPassed = 0
        
       timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(update), userInfo: nil, repeats: true)


    
    }
    
    @objc func update() {
        if(secondsPassed < totalTime) {
            secondsPassed += 1

            let percentageProgress = Float(secondsPassed) / Float(totalTime)
            barPV.progress = percentageProgress
            print(percentageProgress)

        } else {
            timer.invalidate()
            eTextLBL.text = eTextDone
            if barPV.progress == 1.0 {
                playSound(soundName: "alarm_sound")
            }
        
        }

        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: alarmSound, withExtension: extSound)
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    
    
    
}

