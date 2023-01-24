//
//  Categories.swift
//  Ringtone_Maker
//
//  Created by Grishma Dave on 19/01/23.
//

import UIKit

class Categories: UITableViewCell {

    @IBOutlet private weak var btnChecked: UIButton?
    
    @IBAction func didTapOnCheck(sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    
}
