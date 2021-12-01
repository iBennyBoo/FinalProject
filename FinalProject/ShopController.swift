import UIKit
class ShopController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let unlockables: [UIImage] = [UIImage(named: "Default4")!, UIImage(named: "Carl4")!, UIImage(named: "Dwayne4")!, UIImage(named: "Imposter4")!, UIImage(named: "DripSeaver4")!]
    let names: [String] = ["The Stickman", "The... Ya Know...", "The Rock", "The Sussy Baka", "The Legend"]
    let prices: [String] = ["0 DABLOONS™", "100 DABLOONS™", "250 DABLOONS™", "500 DABLOONS™", "2500 DABLOONS™"]
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        let x = CAGradientLayer()
        x.frame = self.view.bounds
        x.colors = [UIColor.green.cgColor, UIColor.systemYellow.cgColor]
        self.view.layer.insertSublayer(x, at: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return unlockables.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CustomCell
        cell.configure(first: names[indexPath.row], picture: unlockables[indexPath.row], second: prices[indexPath.row])
        cell.layer.borderWidth = 1
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //print("collectionview")
        return CGSize(width: 343, height: 140)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }

}
