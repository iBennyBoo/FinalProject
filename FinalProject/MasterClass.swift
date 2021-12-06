import Foundation
import UIKit
public class MasterClass{
    var currency : Int = 100
    var wordbank : [String] = [] //put all words here?
    var character: Int = 1
    
    func updateCurrency(count: Int){
        currency += 10 * count
        //update Labels
    }
    
    func changeCurrency(subtract: Int){
        currency = currency - subtract
        //update Labels
    }
    
    func returnCurrency() -> Int{
        return currency
    }
    
    func changeCharacter(new: Int){
        character = new
    }
    
    func returnCharacter() -> Int{
        return character
    }
}
