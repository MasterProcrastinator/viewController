//
//  ViewController2.swift
//  viewController
//
//  Created by ALVIN CHEN on 9/28/23.
//

import UIKit

class ViewController2: UIViewController {
    
    var name: String!
    
    //creating a var to get access to first view controller
    var delegate: ViewControllerDelagate!
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
print(name)
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonAction(_ sender: UIButton) {
        
        view.backgroundColor = UIColor.yellow
    }
    
    @IBAction func buttonAction2(_ sender: UIButton) {
        
        performSegue(withIdentifier: "segue2", sender: self)
    }
    
    @IBAction func changesName(_ sender: UIButton) {
        var name2 = textFieldOutlet.text!
        delegate.changeName(name2)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
