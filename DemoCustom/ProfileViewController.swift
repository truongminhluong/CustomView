//
//  ProfileViewController.swift
//  DemoCustom
//
//  Created by Trương Minh Lượng Jr on 22/10/2023.
//

import UIKit

class ProfileViewController: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var btnView: UIButton!
    @IBOutlet weak var viewAvatar: UIView!
    @IBOutlet weak var personalView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let avatar = UITapGestureRecognizer(target: self, action: #selector(proFile))
        avatar.delegate = self
        personalView.addGestureRecognizer(avatar)
        personalView.isUserInteractionEnabled = true
        
    }
    
    @IBAction func onClick(_ sender: Any) {
        print("aa")

        let secondViewController = SettingViewController()
        self.navigationController?.pushViewController(secondViewController, animated: true)
        self.navigationController?.popViewController(animated: true)

    }
    @objc func proFile() {
        

    }
    
    
    
    
}
