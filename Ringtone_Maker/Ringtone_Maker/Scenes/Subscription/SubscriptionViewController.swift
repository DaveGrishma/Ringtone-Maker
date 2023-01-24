//
//  SubscriptionViewController.swift
//  Ringtone_Maker
//
//  Created by Grishma Dave on 19/01/23.
//

import UIKit

class SubscriptionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction private func didTapOnContinue() {
        let navigateVC = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController
        self.navigationController?.pushViewController(navigateVC!, animated: true)
    }
}
