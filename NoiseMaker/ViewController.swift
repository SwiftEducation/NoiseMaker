/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var guitarPlayer: AVAudioPlayer?
    var applausePlayer: AVAudioPlayer?
    var monsterPlayer: AVAudioPlayer?
    var bubblesPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playGuitar(sender: UIButton) {
        let url = NSBundle.mainBundle().URLForResource("guitar", withExtension: "wav")
        guitarPlayer = AVAudioPlayer(contentsOfURL: url, error: nil)
        guitarPlayer!.play()
    }
    
    @IBAction func playApplause(sender: UIButton) {
        let url = NSBundle.mainBundle().URLForResource("applause", withExtension: "wav")
        applausePlayer = AVAudioPlayer(contentsOfURL: url, error: nil)
        applausePlayer!.play()
    }
    
    @IBAction func playMonster(sender: UIButton) {
        let url = NSBundle.mainBundle().URLForResource("monster", withExtension: "wav")
        monsterPlayer = AVAudioPlayer(contentsOfURL: url, error: nil)
        monsterPlayer!.play()
    }
    
    @IBAction func playBubbles(sender: UIButton) {
        let url = NSBundle.mainBundle().URLForResource("bubbles", withExtension: "wav")
        bubblesPlayer = AVAudioPlayer(contentsOfURL: url, error: nil)
        bubblesPlayer!.play()
    }
    
}

