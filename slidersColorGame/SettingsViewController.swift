
import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var viewColorRange: UIView!
    
    @IBOutlet weak var redColorValueLabel: UILabel!
    @IBOutlet weak var greenColorValueLabel: UILabel!
    @IBOutlet weak var blueColorValueLabel: UILabel!
    
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColorRange.layer.cornerRadius = 15
        viewColorRange.backgroundColor = .darkGray
        
        redColorSlider.minimumTrackTintColor = .red
        greenColorSlider.minimumTrackTintColor = .green
        blueColorSlider.minimumTrackTintColor = .blue
        
        redColorValueLabel.text = String(redColorSlider.value)
        greenColorValueLabel.text = String(greenColorSlider.value)
        blueColorValueLabel.text = String(blueColorSlider.value)
        
    }
    
    @IBAction func redColorSet() {
        let redColorValue = String(format: "%.2f", redColorSlider.value)
        
        redColorValueLabel.text = redColorValue
        backgroundColors()
    }
    
    @IBAction func greenColorSet() {
        let greenColorValue = String(format: "%.2f", greenColorSlider.value)
        
        greenColorValueLabel.text = greenColorValue
        backgroundColors()
    }
    
    @IBAction func blueColorSet() {
        let blueColorValue = String(format: "%.2f",blueColorSlider.value)
      
        blueColorValueLabel.text = blueColorValue
        backgroundColors()
    }
    
    private func backgroundColors() {
        viewColorRange.backgroundColor = UIColor(red: CGFloat(redColorSlider.value),
                                                 green: CGFloat(greenColorSlider.value),
                                                 blue: CGFloat(blueColorSlider.value),
                                                 alpha: 1)
    }
    
}

