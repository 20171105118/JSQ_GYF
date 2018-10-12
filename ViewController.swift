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
    
    @IBAction func SZ1(_ sender: UIButton) {
        let value:String = (sender as AnyObject).currentTitle
        if value == "+" || value == "-" || value == "*" || value == "/" {
            FH = value
            return
        }
        else if value == "=" {
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
            SZ3 = SZ3 + value
            resultLabel.text = SZ3
        }
        else {
            SZ2 = SZ2 + value
            resultLabel.text = SZ3
        }
    }
}
