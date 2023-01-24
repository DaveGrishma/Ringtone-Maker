//
//  ImportViewController.swift
//  Ringtone_Maker
//
//  Created by Grishma Dave on 08/01/23.
//

import UIKit
struct Import {
    var image: String?
    var title: String?
    var subTitle: String?
    var button: String?
    
    init(image: String, title: String, subTitle: String, button: String) {
        self.image = image
        self.title = title
        self.subTitle = subTitle
        self.button = button
    }
}

class ImportViewController: UIViewController {
    
    @IBOutlet private weak var importCollectionView: UICollectionView?
    var arrayInitials: [Import] = [Import]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp() {
        self.navigationController?.isNavigationBarHidden = true
        importCollectionView?.register(UINib(nibName: "ImportCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        arrayInitials.append(Import(image: "Import", title: "Import from PC", subTitle: "Import unlimited music from your computer to make rigntones", button: "Continue"))
        arrayInitials.append(Import(image: "Trim_Image", title: "Trim to make ringtones", subTitle: "Trim your music or sounds to make your favorite ringtones", button: "Get Started -->"))
        importCollectionView?.reloadData()
    }
    
}

extension ImportViewController: UICollectionViewDelegate,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayInitials.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ImportCell
        cell?.detail = arrayInitials[indexPath.item]
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let navigateVC = storyboard?.instantiateViewController(withIdentifier: "SubscriptionViewController") as? SubscriptionViewController
        self.navigationController?.pushViewController(navigateVC!, animated: true)
    }
}
