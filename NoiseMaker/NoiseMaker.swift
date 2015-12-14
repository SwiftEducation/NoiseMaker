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
        if let url = NSBundle.mainBundle().URLForResource("guitar", withExtension: "wav") {
            guitarPlayer = try? AVAudioPlayer(contentsOfURL: url)
            guitarPlayer?.play()
        }
    }
    
    func playApplauseSound() {
        if let url = NSBundle.mainBundle().URLForResource("applause", withExtension: "wav") {
            applausePlayer = try? AVAudioPlayer(contentsOfURL: url)
            applausePlayer?.play()
        }
    }
    
    func playMonsterSound() {
        if let url = NSBundle.mainBundle().URLForResource("monster", withExtension: "wav") {
            monsterPlayer = try? AVAudioPlayer(contentsOfURL: url)
            monsterPlayer?.play()
        }
    }
    
    func playBubblesSound() {
        if let url = NSBundle.mainBundle().URLForResource("bubbles", withExtension: "wav") {
            bubblesPlayer = try? AVAudioPlayer(contentsOfURL: url)
            bubblesPlayer?.play()
        }
    }
    
}