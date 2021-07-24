
import UIKit

struct Colors {
    var redColor: CGFloat
    var greenColor: CGFloat
    var blueColor: CGFloat
    
    var colors: UIColor {
        UIColor(red: CGFloat(redColor),
                green: CGFloat(greenColor),
                blue: CGFloat(blueColor),
                alpha: 1)
    }
    
//    func colors: UIColor {
//        UIColor(red: CGFloat(redColor),
//                green: CGFloat(greenColor),
//                blue: CGFloat(blueColor),
//                alpha: 1)
//    }
}
