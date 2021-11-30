//hello my name is amelia
import UIKit
class ViewController: UIViewController {
//this is a comment lmao - BennyBoy
    override func viewDidLoad() {
        super.viewDidLoad()
        let x = CAGradientLayer()
        x.frame = self.view.bounds
        x.colors = [UIColor.red.cgColor, UIColor.systemYellow.cgColor]
        self.view.layer.insertSublayer(x, at: 0)
    }

    

}

