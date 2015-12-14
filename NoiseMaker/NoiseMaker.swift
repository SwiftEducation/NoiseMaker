/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import AVFoundation

class NoiseMaker {
    
    let audioFileNames = ["guitar", "applause", "monster", "bubbles"]
    let players: [AVAudioPlayer?]
    
    init() {
        players = audioFileNames.map { filename in
            if let url = NSBundle.mainBundle().URLForResource(filename, withExtension: "wav") {
                return try? AVAudioPlayer(contentsOfURL: url)
            } else {
                return nil
            }
        }
    }
    
    func play(index: Int) {
        if !players.isEmpty && index >= 0 && index < players.count {
            players[index]?.play()
        }
    }
    
}