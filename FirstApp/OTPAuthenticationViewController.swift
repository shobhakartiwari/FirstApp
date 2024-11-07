//
//  OTPAuthenticationViewController.swift
//  FirstApp
//
//  Created by Shailesh Srigiri on 11/7/24.
//

import UIKit

class OTPAuthenticationViewController: UIViewController {
    
    @IBOutlet weak var otpTextField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func verifyOTPButtonTapped(_ sender: UIButton) {
        guard let enteredOTP = otpTextField.text else { return }
        
        if enteredOTP == "1234567" {
            print("Your OTP is verified")
        } else {
            print("Invalid OTP")
        }
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
