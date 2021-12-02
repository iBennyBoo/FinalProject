import UIKit
class HowToPlayController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let x = CAGradientLayer()
        x.frame = self.view.bounds
        x.colors = [UIColor.cyan.cgColor, UIColor.systemYellow.cgColor]
        self.view.layer.insertSublayer(x, at: 0)
    }
   

}
