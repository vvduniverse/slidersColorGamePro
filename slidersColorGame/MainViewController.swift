
import UIKit

protocol SettingsViewControllerDelegate {
    func setColor(_ redColor: CGFloat, _ greenColor: CGFloat, _ blueColor: CGFloat)
}

class MainViewController: UIViewController{
    
    var redColorVC: CGFloat = 1.0
    var greenColorVC: CGFloat = 1.0
    var blueColorVC: CGFloat = 1.0

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsViewController = segue.destination as? SettingsViewController else { return }
        settingsViewController.redColor = redColorVC
        settingsViewController.greenColor = greenColorVC
        settingsViewController.blueColor = blueColorVC
        settingsViewController.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: redColorVC,
                                            green: greenColorVC,
                                            blue: blueColorVC,
                                            alpha: 1)
    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func setColor(_ redColor: CGFloat, _ greenColor: CGFloat, _ blueColor: CGFloat) {
        self.view.backgroundColor = UIColor(red: redColor,
                                            green: greenColor,
                                            blue: blueColor,
                                            alpha: 1)
        redColorVC = redColor
        greenColorVC = greenColor
        blueColorVC = blueColor
    }
}
