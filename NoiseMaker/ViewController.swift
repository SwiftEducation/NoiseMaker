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

    @IBAction func playGuitar(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "guitar", withExtension: "wav") {
            player = try? AVAudioPlayer(contentsOf: url)
            player?.play()
        }
    }
    
    @IBAction func playApplause(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "applause", withExtension: "wav") {
            player = try? AVAudioPlayer(contentsOf: url)
            player?.play()
        }
    }
    
    @IBAction func playMonster(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "monster", withExtension: "wav") {
            player = try? AVAudioPlayer(contentsOf: url)
            player?.play()
        }
    }
    
    @IBAction func playBubbles(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "bubbles", withExtension: "wav") {
            player = try? AVAudioPlayer(contentsOf: url)
            player?.play()
        }
    }
    
}

