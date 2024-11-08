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
        guard let enteredOTP = otpTextField.text, !enteredOTP.isEmpty else {
            let alert = UIAlertController(title: "Error", message: "Please enter a valid OTP", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            return
        }

        if let otpNumber = Int(enteredOTP) {
            let alert = UIAlertController(title: "Success", message: "Your OTP (\(otpNumber)) is verified", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Error", message: "Invalid OTP, please enter only numbers", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
}
