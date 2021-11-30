import UIKit
class ShopController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let items: [UIImage] = []
    let names: [String] = []
    let prices: [Int] = []
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let x = CAGradientLayer()
        x.frame = self.view.bounds
        x.colors = [UIColor.green.cgColor, UIColor.systemYellow.cgColor]
        self.view.layer.insertSublayer(x, at: 0)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        32
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "myCell") as! CustomTableViewCell
        return cell
    }

}
