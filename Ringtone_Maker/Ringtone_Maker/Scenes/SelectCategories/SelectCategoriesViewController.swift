import UIKit

class SelectCategoriesViewController: UIViewController {
    
    @IBOutlet private weak var categoryTableView: UITableView?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp() {
        categoryTableView?.register(UINib(nibName: "Categories", bundle: nil), forCellReuseIdentifier: "category")
        categoryTableView?.reloadData()
    }
}

extension SelectCategoriesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "category") as? Categories
        return cell ?? UITableViewCell()
    }
    
    
}
