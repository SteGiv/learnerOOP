
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var learnerNameLabel: UILabel!
    @IBOutlet weak var learnerAgeLabel: UILabel!
    @IBOutlet weak var learnerGenderLabel: UILabel!

    @IBOutlet weak var carNameLabel: UILabel!
    @IBOutlet weak var carHPLabel: UILabel!
    @IBOutlet weak var carSpeedLabel: UILabel!
    var learnerInstance: learnerModel?
    var carInstance: Lamborghini?
    override func viewDidLoad() {
        super.viewDidLoad()
        learnerInstance = learnerModel(nameLearner: "Stefandi", ageLearner: 21, genderLearner: "Male", imageProfileLearner: "")
        updateUI()
        carInstance = Lamborghini(carName: "Adventador", carHorsePower: 650, carSpeed: 150)
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
        if let carsuper = carInstance
        {
            carNameLabel.text = carsuper.name
            carHPLabel.text = "\(carsuper.horsePower)"
            carSpeedLabel.text = "\(carsuper.speed)"
        }
       
    }
    @IBAction func increaseAgeButton(_ sender: UIButton) {
        if let instance = learnerInstance{
        instance.increaseAge()
        updateUI()
        }
    }
        
    @IBAction func speedUpButton(_ sender: UIButton) {
        if let carsuper = carInstance
        {
            carsuper.increaseSpeed()
            updateUI()
        }
    }
    @IBAction func speedDownButton(_ sender: UIButton) {
        if let carsuper = carInstance
        {
            carsuper.reduceSpeed()
            updateUI()
        }
    }
    
    @IBAction func stopButton(_ sender: UIButton){
        if let carsuper = carInstance
        {
            carsuper.stopCar()
            updateUI()
        }
    }
  
    @IBAction func nosButton(_ sender: UIButton) {
        if let carsuper = carInstance
        {
            carsuper.useNOS()
            updateUI()
        }
    }
}

