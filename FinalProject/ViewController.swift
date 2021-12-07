//hello my name is amelia
import UIKit
import AVFoundation
class ViewController: UIViewController {
//this is a comment lmao - BennyBoy
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.becomeFirstResponder()
        let x = CAGradientLayer()
        x.frame = self.view.bounds
        x.colors = [UIColor.red.cgColor, UIColor.systemYellow.cgColor]
        self.view.layer.insertSublayer(x, at: 0)
    }
    
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    
    //Plays audio if user shakes phone
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            let sound = Bundle.main.path(forResource: "trollface-smile", ofType: "mp3")!
            let url = URL(fileURLWithPath: sound)
            
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            }catch{
                print("error!")
            }
        }
    }

}

