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
        let url = NSBundle.mainBundle().URLForResource("guitar", withExtension: "wav")
        guitarPlayer = AVAudioPlayer(contentsOfURL: url, error: nil)
        guitarPlayer!.play()
    }
    
    func playApplauseSound() {
        let url = NSBundle.mainBundle().URLForResource("applause", withExtension: "wav")
        applausePlayer = AVAudioPlayer(contentsOfURL: url, error: nil)
        applausePlayer!.play()
    }
    
    func playMonsterSound() {
        let url = NSBundle.mainBundle().URLForResource("monster", withExtension: "wav")
        monsterPlayer = AVAudioPlayer(contentsOfURL: url, error: nil)
        monsterPlayer!.play()
    }
    
    func playBubblesSound() {
        let url = NSBundle.mainBundle().URLForResource("bubbles", withExtension: "wav")
        bubblesPlayer = AVAudioPlayer(contentsOfURL: url, error: nil)
        bubblesPlayer!.play()
    }
    
}