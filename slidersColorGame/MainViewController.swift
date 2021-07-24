
import UIKit

class MainViewController: UIViewController{
    
    var redColorVC: CGFloat = 1.0
    var greenColorVC: CGFloat = 1.0
    var blueColorVC: CGFloat = 1.0

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsViewController = segue.destination as? SettingsViewController else { return }
        settingsViewController.redColor = redColorVC
        settingsViewController.greenColor = greenColorVC
        settingsViewController.bluecolor = blueColorVC
//        welcomeVC.username = userLoginTF.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: redColorVC,
                                            green: greenColorVC,
                                            blue: blueColorVC,
                                            alpha: 1)
        
//        self.view.backgroundColor = Colors.init(redColor: 1.0, greenColor: 1.0, blueColor: 1.0)

    }

}
