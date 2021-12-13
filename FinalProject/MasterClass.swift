import Foundation
import UIKit
public class MasterClass{
    static var currency : Int = 0
    var character: Int = 0
    var current: Int = 0
    
    func updateCurrency(count: Int){
        MasterClass.currency += 10 * count
        print("updated: \(MasterClass.currency)")
        //update Labels?
    }
    
    func returnUpdatedCurrency(count: Int) -> Int{
        return 10 * count
    }
    
    func changeCurrency(subtract: Int){
        MasterClass.currency = MasterClass.currency - subtract
        print("changed: \(MasterClass.currency)")
        //update Labels
    }
    
    func returnCurrency() -> Int{
        print("returned: \(MasterClass.currency)")
        return MasterClass.currency
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
