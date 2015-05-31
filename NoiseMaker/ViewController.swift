/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {

    let noiseMaker = NoiseMaker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playGuitar(sender: UIButton) {
        noiseMaker.play(0)
    }
    
    @IBAction func playApplause(sender: UIButton) {
        noiseMaker.play(1)
    }
    
    @IBAction func playMonster(sender: UIButton) {
        noiseMaker.play(2)
    }
    
    @IBAction func playBubbles(sender: UIButton) {
        noiseMaker.play(3)
    }
    
}

