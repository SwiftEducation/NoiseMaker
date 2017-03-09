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
            if let url = Bundle.main.url(forResource: filename, withExtension: "wav") {
                return try? AVAudioPlayer(contentsOf: url)
            } else {
                return nil
            }
        }
    }
    
    func play(_ index: Int) {
        if !players.isEmpty && index >= 0 && index < players.count {
            players[index]?.play()
        }
    }
    
}
