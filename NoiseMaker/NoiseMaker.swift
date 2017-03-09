/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import AVFoundation

class NoiseMaker {
    
    private var guitarPlayer: AVAudioPlayer?
    private var applausePlayer: AVAudioPlayer?
    private var monsterPlayer: AVAudioPlayer?
    private var bubblesPlayer: AVAudioPlayer?
    
    func playGuitarSound() {
        if let url = Bundle.main.url(forResource: "guitar", withExtension: "wav") {
            guitarPlayer = try? AVAudioPlayer(contentsOf: url)
            guitarPlayer?.play()
        }
    }
    
    func playApplauseSound() {
        if let url = Bundle.main.url(forResource: "applause", withExtension: "wav") {
            applausePlayer = try? AVAudioPlayer(contentsOf: url)
            applausePlayer?.play()
        }
    }
    
    func playMonsterSound() {
        if let url = Bundle.main.url(forResource: "monster", withExtension: "wav") {
            monsterPlayer = try? AVAudioPlayer(contentsOf: url)
            monsterPlayer?.play()
        }
    }
    
    func playBubblesSound() {
        if let url = Bundle.main.url(forResource: "bubbles", withExtension: "wav") {
            bubblesPlayer = try? AVAudioPlayer(contentsOf: url)
            bubblesPlayer?.play()
        }
    }
    
}
