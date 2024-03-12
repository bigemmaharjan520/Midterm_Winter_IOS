//
//  FunctionViewController.swift
//  Bigem_Maharjan_Midterm_8952906
//
//  Created by user240741 on 3/11/24.
//

import UIKit

class FunctionViewController: UIViewController {
    
    //User Input A
    @IBOutlet weak var userInputA: UITextField!
    
    //User Input B
    @IBOutlet weak var userInputB: UITextField!
    
    //User Input C
    @IBOutlet weak var userInputC: UITextField!
    
    //Message Display Label
    @IBOutlet weak var messageDisplay: UILabel!
    
    
    //Second Message Display Label
    @IBOutlet weak var secondMessageDis: UILabel!
    
    //Calcalute Button
    @IBAction func calculateBtn(_ sender: Any) {
        //Checking if user enters all the value or not
        guard let a = Double(userInputA.text ?? ""),
              let b = Double(userInputB.text ?? ""),
              let c = Double(userInputC.text ?? "")else{
            messageDisplay.text = "Enter value for A, B and C to find X."
            secondMessageDis.text?.removeAll()
            return
        }
        
        //checking whether the user has entered 0 or not
        let aa = Double(userInputA.text!)
        if(aa == 0){
            //Calculating Discrimant once the user enters all the value
            messageDisplay.text = "The value you entered for A is invalid."
            secondMessageDis.text?.removeAll()
            return
        }
        
//        let discriminant = b * b - 4 * a * c
        let discriminant = Double(pow(Float(b), 2)) - (4 * a * c)
                
        if (discriminant < 0){
            secondMessageDis.text?.removeAll()
            messageDisplay.text = "There are no results since the discriminant is less than zero."
        }else if (discriminant == 0){
            messageDisplay.text = "There is only one value for X."
            
            let x = -b / (2 * a)
            secondMessageDis.text = "The value of X is \(x)"
            
        }else{
            messageDisplay.text = "There are two values for X."
            
            let x = (-b + sqrt(discriminant)) / (2 * a)
            let x1 = (-b - sqrt(discriminant)) / (2 * a)
            secondMessageDis.text = "The value of X are \(x) and \(x1)"
        }
        
        
        
    }
    
    //Clear Button
    @IBAction func clearBtn(_ sender: Any) {
        userInputA.text?.removeAll()
        userInputB.text?.removeAll()
        userInputC.text?.removeAll()
        messageDisplay.text?.removeAll()
        secondMessageDis.text?.removeAll()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Keyboard appearance and disappearance
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

                  //Uncomment the line below if you want the tap not not interfere and cancel other interactions.

                  tap.cancelsTouchesInView = false

                  view.addGestureRecognizer(tap)
    }
    
    
    @objc func dismissKeyboard() {

        //Causes the view (or one of its embedded text fields) to resign the first responder status.

        view.endEditing(true)

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
