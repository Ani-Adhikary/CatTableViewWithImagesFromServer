//
//  CatViewController.swift
//  StarterAppUsingXIB
//
//  Created by Ani Adhikary on 09/02/19.
//  Copyright © 2019 TheTechStory. All rights reserved.
//

import UIKit

class CatViewController: UIViewController {
        
    @IBOutlet weak var catTableView: UITableView!
    
    var cats = [Cat]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Geru Murku Tilu Chotu Pics"
        setupTableView()
    }
    
    func setupTableView() {
        catTableView.dataSource = self
        catTableView.delegate = self
        catTableView.register(CatTableViewCell.nib, forCellReuseIdentifier: CatTableViewCell.identifier)
        catTableView.separatorStyle = .none
        catTableView.tableFooterView = UIView()
        catTableView.separatorInset = UIEdgeInsets.zero
        catTableView.layoutMargins = UIEdgeInsets.zero
        catTableView.sectionHeaderHeight = 0
        
        cats = CatResponseInfo.getCats()
    }
    
}

extension CatViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let catCell = tableView.dequeueReusableCell(withIdentifier: CatTableViewCell.identifier, for: indexPath) as! CatTableViewCell
        
        let catVal = cats[indexPath.row]
        catCell.setupData(cat: catVal)
        
        return catCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let catVal = cats[indexPath.row]
        let catDetailVC = CatDetailViewController(nibName: "CatDetailViewController", bundle: nil)
        catDetailVC.cat = catVal
        navigationController?.pushViewController(catDetailVC, animated: true)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
