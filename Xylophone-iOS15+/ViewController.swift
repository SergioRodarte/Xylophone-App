//
//  ViewController.swift
//  Xylophone-iOS15+
//
//  Created by Sergio Rodarte on 04/08/24.
//

import UIKit
import AVFAudio

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        print("Start")
        
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3){
            sender.alpha = 1.0
        }
        
        
        
        
        playSound(soundName: (sender.titleLabel?.text)!)
        
        
        print("Finish")
    }
    
    func playSound(soundName: String){
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}

