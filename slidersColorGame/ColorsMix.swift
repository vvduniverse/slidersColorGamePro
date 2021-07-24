
import UIKit

struct Colors {
    var redColor: CGFloat
    var greenColor: CGFloat
    var blueColor: CGFloat
    
    var colorsMix: UIColor {
        UIColor(red: CGFloat(redColor),
                green: CGFloat(greenColor),
                blue: CGFloat(blueColor),
                alpha: 1)
    }
    
}
