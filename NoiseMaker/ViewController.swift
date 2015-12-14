/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playGuitar(sender: UIButton) {
        if let url = NSBundle.mainBundle().URLForResource("guitar", withExtension: "wav") {
            player = try? AVAudioPlayer(contentsOfURL: url)
            player?.play()
        }
    }
    
    @IBAction func playApplause(sender: UIButton) {
        if let url = NSBundle.mainBundle().URLForResource("applause", withExtension: "wav") {
            player = try? AVAudioPlayer(contentsOfURL: url)
            player?.play()
        }
    }
    
    @IBAction func playMonster(sender: UIButton) {
        if let url = NSBundle.mainBundle().URLForResource("monster", withExtension: "wav") {
            player = try? AVAudioPlayer(contentsOfURL: url)
            player?.play()
        }
    }
    
    @IBAction func playBubbles(sender: UIButton) {
        if let url = NSBundle.mainBundle().URLForResource("bubbles", withExtension: "wav") {
            player = try? AVAudioPlayer(contentsOfURL: url)
            player?.play()
        }
    }
    
}

