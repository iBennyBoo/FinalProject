import UIKit
class GameController: UIViewController {

    
    @IBOutlet weak var aoutlet: UIButton!
    @IBOutlet weak var boutlet: UIButton!
    @IBOutlet weak var coutlet: UIButton!
    @IBOutlet weak var doutlet: UIButton!
    @IBOutlet weak var eoutlet: UIButton!
    @IBOutlet weak var foutlet: UIButton!
    @IBOutlet weak var goutlet: UIButton!
    @IBOutlet weak var houtlet: UIButton!
    @IBOutlet weak var ioutlet: UIButton!
    @IBOutlet weak var joutlet: UIButton!
    @IBOutlet weak var koutlet: UIButton!
    @IBOutlet weak var loutlet: UIButton!
    @IBOutlet weak var moulet: UIButton!
    @IBOutlet weak var noutlet: UIButton!
    @IBOutlet weak var ooutlet: UIButton!
    @IBOutlet weak var poutlet: UIButton!
    @IBOutlet weak var qoutlet: UIButton!
    @IBOutlet weak var routlet: UIButton!
    @IBOutlet weak var soutlet: UIButton!
    @IBOutlet weak var toutlet: UIButton!
    @IBOutlet weak var uoutlet: UIButton!
    @IBOutlet weak var voulet: UIButton!
    @IBOutlet weak var woutlet: UIButton!
    @IBOutlet weak var xoutlet: UIButton!
    @IBOutlet weak var youtlet: UIButton!
    @IBOutlet weak var zoutlet: UIButton!
    
    
    
    
    
    
    
    
    
    
    @IBOutlet weak var guessLabel: UILabel!
    
    var wordBank = ["lake","central","south","seaver","squirrel", "crystal","school","downtown","cottage","veterans", "amelia","ben","fourteen","canes","illinois","tigers", "football","clubs","community","chicago","orange","jason","parade","raue","firework"]
    
       var special = [Character]()
       var chosen = "hama"
       var number = 0
       var guesses = 0
       var theSpot = 0
       var put = [String]()
       //var inString = ""

       
       override func viewDidLoad() {
           super.viewDidLoad()
           let x = CAGradientLayer()
           x.frame = self.view.bounds
           x.colors = [UIColor.lightGray.cgColor, UIColor.darkGray.cgColor]
           self.view.layer.insertSublayer(x, at: 0)
           
           
           var num = Int.random(in: 0..<wordBank.count)
          // chosen = wordBank[num]
           makeArray(wow: chosen)
         
           var t = 0
           while t < special.count{
               put.append(" _ ")
               t = t + 1
           }
           
           var setup = ""
           var o = 0
           while o < put.count{
           setup = setup + put[o]
           o = o + 1
           }
           
         guessLabel.text = setup
           
           
           
           
       }
       
    
       
    
       
       
       @IBAction func abutton(_ sender: UIButton) {
           print("hello")
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "a"{
                  col = true
                updateGuess(guess: "a", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               aoutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
    
           }
           else{
               aoutlet.backgroundColor = UIColor.red
           }
       }
       
    
    
    
    
       @IBAction func bbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "b"{
                  col = true
                updateGuess(guess: "b", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               boutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               boutlet.backgroundColor = UIColor.red
           }
       }
       
       
       @IBAction func cbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "c"{
                  col = true
                updateGuess(guess: "c", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               coutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               coutlet.backgroundColor = UIColor.red
           }
       }
       
       
       @IBAction func dbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "d"{
                  col = true
                updateGuess(guess: "d", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               doutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               doutlet.backgroundColor = UIColor.red
           }
       }
       
       
       @IBAction func ebuttton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "e"{
                  col = true
                updateGuess(guess: "e", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               eoutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               eoutlet.backgroundColor = UIColor.red
           }
       }
    
       
       @IBAction func fbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "f"{
                  col = true
                updateGuess(guess: "f", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               foutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               foutlet.backgroundColor = UIColor.red
           }
       }
       
       
       @IBAction func gbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "g"{
                  col = true
                updateGuess(guess: "g", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               goutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               goutlet.backgroundColor = UIColor.red
           }
       }
       
       
       @IBAction func hbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "h"{
                  col = true
                updateGuess(guess: "h", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           
           if col == true{
               houtlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               houtlet.backgroundColor = UIColor.red
           }
       }
       
       
       @IBAction func ibutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "i"{
                  col = true
                updateGuess(guess: "i", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               ioutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               ioutlet.backgroundColor = UIColor.red
           }
       }
    
       
       @IBAction func jbuttonj(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "j"{
                  col = true
                updateGuess(guess: "j", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               joutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               joutlet.backgroundColor = UIColor.red
           }
       }
       
       @IBAction func kbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "k"{
                  col = true
                updateGuess(guess: "k", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               koutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               koutlet.backgroundColor = UIColor.red
           }
       }
       
       @IBAction func lbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "l"{
                  col = true
                updateGuess(guess: "l", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               loutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               loutlet.backgroundColor = UIColor.red
           }
       }
       
       @IBAction func mbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "m"{
                  col = true
                updateGuess(guess: "m", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               moulet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               moulet.backgroundColor = UIColor.red
           }
       }
       
       
       @IBAction func nbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "n"{
                  col = true
                updateGuess(guess: "n", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               noutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               noutlet.backgroundColor = UIColor.red
           }
       }
    
       
       @IBAction func obutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "o"{
                  col = true
                updateGuess(guess: "o", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               ooutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               ooutlet.backgroundColor = UIColor.red
           }
       }
       
       @IBAction func pbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "p"{
                  col = true
                updateGuess(guess: "p", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               poutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               poutlet.backgroundColor = UIColor.red
           }
       }
       
       @IBAction func qbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "q"{
                  col = true
                updateGuess(guess: "q", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               qoutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               qoutlet.backgroundColor = UIColor.red
           }
       }
       
       @IBAction func rbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "r"{
                  col = true
                updateGuess(guess: "r", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               routlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               routlet.backgroundColor = UIColor.red
           }
       }
       
       
       @IBAction func sbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "s"{
                  col = true
                updateGuess(guess: "s", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               soutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               soutlet.backgroundColor = UIColor.red
           }
       }
       
       
       @IBAction func tbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "t"{
                  col = true
                updateGuess(guess: "t", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               toutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               toutlet.backgroundColor = UIColor.red
           }
       }
       
       @IBAction func ubutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "u"{
                  col = true
                updateGuess(guess: "u", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               uoutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               uoutlet.backgroundColor = UIColor.red
           }
       }
       
       
       
       @IBAction func vbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "v"{
                  col = true
                updateGuess(guess: "v", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               voulet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               voulet.backgroundColor = UIColor.red
           }
       }
       
       
       @IBAction func wbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "w"{
                  col = true
                updateGuess(guess: "w", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               woutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               woutlet.backgroundColor = UIColor.red
           }
       }
       
       
       @IBAction func xbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "x"{
                  col = true
                updateGuess(guess: "x", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               xoutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               xoutlet.backgroundColor = UIColor.red
           }
       }
       
       @IBAction func ybutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "y"{
                  col = true
                updateGuess(guess: "y", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               youtlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               youtlet.backgroundColor = UIColor.red
           }
       }
       
       
       @IBAction func zbutton(_ sender: Any) {
           var col  = false
           var loopAmt = 0
           for poo in special{
               if poo == "z"{
                  col = true
                updateGuess(guess: "z", spot: loopAmt)
               }
               loopAmt = loopAmt + 1
           }
           if col == true{
               zoutlet.backgroundColor = UIColor.green
               guesses = guesses + 1
           }
           else{
               zoutlet.backgroundColor = UIColor.red
           }
       }
       
       
       
      //=======================functions==========================================
      
       func makeArray(wow: String){
       
           for character in wow{
             special.append(character)
           }
       }
       
       
       
       func updateGuess(guess: Character, spot: Int){
           
           var x = 0
           var inString = ""
           
           put.remove(at:spot)
           put.insert(String(guess), at: spot)
           
           while x < put.count{
           inString = inString + put[x]
           x = x + 1
           print(inString)
           }
           print(inString)
           guessLabel.text = inString
       
       }
           
           
           
           
           
           
           
           
           
       }
       
       
       
       

