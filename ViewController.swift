import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var SZ3:String = ""
    var SZ2:String = ""
    var FH:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func But(_ sender: UIButton) {
        let buttonTitle:String = (sender as AnyObject).currentTitle!
        if buttonTitle == "+" || value == "-" || value == "*" || value == "/" {
            FH = buttonTitle
            return
        }
        else if buttonTitle == "=" {
            var result = 0
            switch FH {
            case "+":
                result = Int(SZ3)! + Int(SZ2)!
            case "-":
                result = Int(SZ3)! - Int(SZ2)!
            case "*":
                result = Int(SZ3)! * Int(SZ2)!
            case "/":
                result = Int(SZ3)! / Int(SZ2)!
            default:
                result = 0
            }
            resultLabel.text = "\(result)"
            
            return
        }
        if FH == "" {
            SZ3 = SZ3 + buttonTitle
            resultLabel.text = SZ3
        }
        else {
            SZ2 = SZ2 + buttonTitle
            resultLabel.text = SZ3
        }
    }
}
