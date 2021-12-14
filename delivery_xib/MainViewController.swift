//
//  MainViewController.swift
//  delivery_xib
//
//  Created by Minh Anh on 15/12/2021.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        print("")
        super.viewDidLoad()
        title = " "
        
        //navigation bar background
        let navigationBarAppearance = UINavigationBar.appearance()
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(rgb: 0x555555)]
        navigationBarAppearance.barTintColor = UIColor(rgb: 0xF8F8F8)
        //back button
        let backButton = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton
        self.navigationController?.navigationBar.tintColor = .init(rgb: 0x555555)
        self.navigationController?.navigationBar.backItem?.title = nil
        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("view Will Disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view Did Disappear")
    }
    
    
    @IBAction func signUpBtnAction(_ sender: UIButton) {
        let vc = SignUpViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func signInBtnAction(_ sender: UIButton) {
        let vc = SignInViewController()
        self.navigationController?.pushViewController(vc, animated: true)
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


extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}


