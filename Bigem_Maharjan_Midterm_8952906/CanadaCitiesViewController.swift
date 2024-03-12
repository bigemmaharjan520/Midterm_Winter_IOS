//
//  CanadaCitiesViewController.swift
//  Bigem_Maharjan_Midterm_8952906
//
//  Created by user240741 on 3/11/24.
//

import UIKit

class CanadaCitiesViewController: UIViewController {

    //Label to show the error or city name
    @IBOutlet weak var messageLabel: UILabel!
    
    //User Input Text Field
    @IBOutlet weak var userCityInput: UITextField!
    
   
    //Canada City Image
    @IBOutlet weak var canadaCityImg: UIImageView!
    
    //find my city button
    @IBAction func findMyCityBtn(_ sender: UIButton) {
        if (userCityInput.text == "Vancouver") {
            canadaCityImg.image = UIImage(named: "Vancouver")
            
            //Displaying city name
            messageLabel.text = "Vancouver"
            
            //Clearing textfield once the user clicks FindmyCity Button
            userCityInput.text = ""
        }
        else  if (userCityInput.text == "Toronto") {
            canadaCityImg.image = UIImage(named: "Toronto")
            
            //Displaying city name
            messageLabel.text = "Toronto"
            
            //Clearing textfield once the user clicks FindmyCity Button
            userCityInput.text = ""
        }
        else  if (userCityInput.text == "Winnipeg") {
            canadaCityImg.image = UIImage(named: "Winnipeg")
            
            //Displaying city name
            messageLabel.text = "Winnipeg"
            
            //Clearing textfield once the user clicks FindmyCity Button
            userCityInput.text = ""
        }
        else  if (userCityInput.text == "Halifax") {
            canadaCityImg.image = UIImage(named: "Halifax")
            
            //Displaying city name
            messageLabel.text = "Halifax"
            
            //Clearing textfield once the user clicks FindmyCity Button
            userCityInput.text = ""
        }
        else  if (userCityInput.text == "Montreal") {
            canadaCityImg.image = UIImage(named: "Montreal")
            
            //Displaying city name
            messageLabel.text = "Montreal"
            
            //Clearing textfield once the user clicks FindmyCity Button
            userCityInput.text = ""
        }
        else  if (userCityInput.text == "Calgary") {
            canadaCityImg.image = UIImage(named: "Calgary")
            
            //Displaying city name
            messageLabel.text = "Calgary"
            
            //Clearing textfield once the user clicks FindmyCity Button
            userCityInput.text = ""
        }
        else{
            canadaCityImg.image = UIImage(named: "Canada Image")
            
            //Displaying error message with wrong city name if entered by user else only the error message will be displayed if user do not enter any value
            messageLabel.text = "The city you entered is not found. \(userCityInput.text ?? "")"
            
            //Clearing textfield once the user clicks FindmyCity Button
            userCityInput.text = ""
        }
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
