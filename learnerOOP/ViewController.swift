
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var learnerNameLabel: UILabel!
    @IBOutlet weak var learnerAgeLabel: UILabel!
    @IBOutlet weak var learnerGenderLabel: UILabel!

    var learnerInstance: learnerModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        learnerInstance = learnerModel(nameLearner: "Stefandi", ageLearner: 21, genderLearner: "Male", imageProfileLearner: "")
        updateUI()
    }
    func updateUI()
    {
        if let instance = learnerInstance
        {
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = "\(instance.age)"
            learnerGenderLabel.text = instance.gender
        }
       
    }
    @IBAction func increaseAgeButton(_ sender: UIButton) {
        if let instance = learnerInstance{
        instance.increaseAge()
        updateUI()
        }
    }
        
}

