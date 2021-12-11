import Foundation
import UIKit
public class MasterClass{
    var currency : Int = 0
    var character: Int = 0
    var current: Int = 0
    
    func updateCurrency(count: Int){
        currency += 10 * count
        print("updated: \(currency)")
        //update Labels?
    }
    
    func returnUpdatedCurrency(count: Int) -> Int{
        return 10 * count
    }
    
    func changeCurrency(subtract: Int){
        currency = currency - subtract
        print("changed: \(currency)")
        //update Labels
    }
    
    func returnCurrency() -> Int{
        print("returned: \(currency)")
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
