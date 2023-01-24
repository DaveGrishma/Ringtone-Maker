//
//  ImportCell.swift
//  Ringtone_Maker
//
//  Created by Grishma Dave on 08/01/23.
//

import UIKit
import SDWebImage

class ImportCell: UICollectionViewCell {

    @IBOutlet private weak var image: UIImageView?
    @IBOutlet private weak var title: UILabel?
    @IBOutlet private weak var subTitle: UILabel?
    @IBOutlet private weak var button: UIButton?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    var detail: Import? {
        didSet {
            image?.image = UIImage(named: detail?.image ?? "")
            title?.text = detail?.title ?? ""
            subTitle?.text = detail?.subTitle ?? ""
            button?.setTitle(detail?.button ?? "", for: .normal)
        }
    }
    
}
