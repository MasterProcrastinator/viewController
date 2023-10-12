//
//  ViewController.swift
//  viewController
//
//  Created by ALVIN CHEN on 9/28/23.
//

protocol ViewControllerDelagate{
    func changeName(_ s1: String)
}
//protocols are like interfaces
//protocols have blank functions, when adopted you must write the functions code
import UIKit
// add a , to add protocols
class ViewController: UIViewController, ViewControllerDelagate {


    @IBOutlet weak var textFieldOutlet: UITextField!
    
    var pony = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
 
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        print(pony)
    }
    
    
    
    
    @IBAction func manualAction(_ sender: UIButton) {
        pony = textFieldOutlet.text!
        view.backgroundColor = UIColor.brown
        performSegue(withIdentifier: "toRed", sender: self)
    }
    //called before segue happens
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //NVC (next view controller) giving access to the next view controller
        let nvc = segue.destination as! ViewController2
        nvc.name = pony
        nvc.delegate = self
            
        
    }
    
    
    func changeName(_ s1: String) {
        pony = s1
    }
    
    
    
}

