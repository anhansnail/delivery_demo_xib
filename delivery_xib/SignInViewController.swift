//
//  SignInViewController.swift
//  delivery_xib
//
//  Created by Minh Anh on 15/12/2021.
//

import UIKit

class SignInViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign In"
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func forgotPWAction(_ sender: UIButton) {
        let vc = ForgotPWViewController()
        navigationController?.pushViewController(vc, animated: true)
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
