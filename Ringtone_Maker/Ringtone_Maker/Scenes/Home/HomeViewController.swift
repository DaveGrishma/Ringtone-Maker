//
//  HomeViewController.swift
//  Ringtone_Maker
//
//  Created by Grishma Dave on 12/01/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet private weak var txtSearch: UITextField?
    @IBOutlet private weak var tblHome: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }

    func setUp() {
        navigationController?.navigationBar.isHidden = true
        tblHome?.register(UINib(nibName: "HomeCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    @IBAction private func didTapOnAddCategory() {
        let navigateVC = storyboard?.instantiateViewController(withIdentifier: "SelectCategoriesViewController") as? SelectCategoriesViewController
        self.navigationController?.present(navigateVC!, animated: true, completion: nil)
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? HomeCell
        return cell ?? UITableViewCell()
    }
  
}
