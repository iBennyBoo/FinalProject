import Foundation
import UIKit
public class MasterClass{
    var currency : Int = 150
    var character: Int = 0
    var current: Int = 0
    
    func updateCurrency(count: Int){
        currency += 10 * count
        //update Labels?
    }
    
    func changeCurrency(subtract: Int){
        currency = currency - subtract
        //update Labels
    }
    
    func returnCurrency() -> Int{
        return currency
    }
    
    func returnCharr() -> Int{
        return character
    }
    
    func changeCharacter(new: Int){
        character = new
    }
    
    func returnCharacter() -> Int{
        return character
    }
}
