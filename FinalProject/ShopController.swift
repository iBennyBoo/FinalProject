import UIKit
import AVFoundation
class ShopController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let unlockables: [UIImage] = [UIImage(named: "Default4")!, UIImage(named: "Carl4")!, UIImage(named: "Dwayne4")!, UIImage(named: "Imposter4")!, UIImage(named: "DripSeaver4")!]
    let names: [String] = ["The Stickman", "The... Ya Know...", "The Rock", "The Sussy Baka", "The Legend"]
    let prices: [String] = ["0 DABLOONS™", "100 DABLOONS™", "250 DABLOONS™", "500 DABLOONS™", "2500 DABLOONS™"]
    var x: [Int] = [0, 100, 250, 500, 2500]
    let shawty = [0, 1, 2, 3, 4]
    var current: [Int] = [0]
    var purchased : [Bool] = [false, false, false, false, false] //change to true if user buys character?
    let character = MasterClass.init()
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    @IBOutlet weak var counterLabel: UILabel!
    
    let color = UIColor.systemTeal
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        let z = CAGradientLayer()
        z.frame = self.view.bounds
        z.colors = [UIColor.green.cgColor, UIColor.systemYellow.cgColor]
        self.view.layer.insertSublayer(z, at: 0)
        
        if let money = UserDefaults.standard.data(forKey: "Money"){
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([Int].self, from: money){
               x = decoded
            }
    }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return unlockables.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CustomCell
        cell.configure(first: names[indexPath.row], picture: unlockables[indexPath.row], second: prices[indexPath.row])
        cell.layer.borderWidth = 1
        if(purchased[indexPath.row] == true){
            cell.labelOutlet.text = "Unlocked"
            cell.labelOutletTwo.isHidden = true
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 343, height: 140)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        updateLabel()
        if(purchased[indexPath.row] == false){
        let alert = UIAlertController(title: "Selected \(names[indexPath.row])", message: "Are You Sure You Want To Purchase This Item?", preferredStyle: .alert)
        let no = UIAlertAction(title: "Negative", style: .default, handler: nil)
        let yes = UIAlertAction(title: "Affirmative", style: .default, handler: { [self] action in
            if(character.returnCurrency() >= x[indexPath.row]){
                let success = UIAlertController(title: "Purchase Successful!", message: "Congratulations Unlocking \(names[indexPath.row]).", preferredStyle: .alert)
                let epic = UIAlertAction(title: "Obama Moment", style: .default, handler: nil)
                success.addAction(epic)
                present(success, animated: true, completion: nil)
               let sound = Bundle.main.path(forResource: "mr-krabs", ofType: "mp3")!
               let url = URL(fileURLWithPath: sound)
                character.changeCurrency(subtract: x[indexPath.row])
                current.append(character.returnCurrency())
                updateLabel()
               do{
                   audioPlayer = try AVAudioPlayer(contentsOf: url)
                   audioPlayer?.play()
               }catch{
                   print("error!")
               }
               collectionView.cellForItem(at: indexPath)?.layer.backgroundColor = color.cgColor
                purchased[indexPath.row] = true
               //Change label in customcell somehow
               
            } else{
                current.append(character.returnCurrency())
                let lmao = UIAlertController(title: "Nah Dawg You Broke", message: "Guess More Words Correctly To Get DABLOONS™", preferredStyle: .alert)
                let ouch = UIAlertAction(title: "D;", style: .default, handler: nil)
                lmao.addAction(ouch)
                present(lmao, animated: true, completion: nil)
            }
            
        })
        alert.addAction(no)
        alert.addAction(yes)
        present(alert, animated: true, completion: nil)
        } else if(purchased[indexPath.row] == true){
            let alert = UIAlertController(title: "Selected \(names[indexPath.row])", message: "Are You Sure You Want To Use This Item?", preferredStyle: .alert)
            let no = UIAlertAction(title: "By No Means", style: .default, handler: nil)
            let yes = UIAlertAction(title: "By All Means", style: .default, handler: { [self] action in
                character.changeCharacter(new: shawty[indexPath.row])
                let success = UIAlertController(title: "\(names[indexPath.row]) is Now Selected!", message: "Guess More Words Correctly To Get DABLOONS™.", preferredStyle: .alert)
                let epic = UIAlertAction(title: "Fortnite Moves!", style: .default, handler: nil)
                success.addAction(epic)
                present(success, animated: true, completion: nil)
            })
            alert.addAction(no)
            alert.addAction(yes)
            present(alert, animated: true, completion: nil)
        }
        collectionView.reloadData()
    }

    func updateLabel(){
        counterLabel.text = "\(character.returnCurrency()) DABLOONS™"
    }

}
