import Foundation
import UIKit
public class MasterClass{
    var currency : Int = 0
    var wordbank : [String] = [] //put all words here?
    
    
    
    func updateCurrency(count: Int){
        currency += 10 * count
    }
}
