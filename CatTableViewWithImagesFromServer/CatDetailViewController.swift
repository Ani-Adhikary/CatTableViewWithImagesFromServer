//
//  CatDetailViewController.swift
//  StarterAppUsingXIB
//
//  Created by Ani Adhikary on 09/02/19.
//  Copyright © 2019 TheTechStory. All rights reserved.
//

import UIKit

class CatDetailViewController: UIViewController {

    @IBOutlet weak var catNameLabel: UILabel!
    @IBOutlet weak var catImageView: UIImageView!
    
    var cat: Cat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationItem.backBarButtonItem?.title = ""
        setupData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        let customBackButton = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = customBackButton
    }
    
    func setupData() {
        if let cat = cat {
            catNameLabel.text = cat.catName
            //catImageView.image = UIImage(named: cat.catImageURLString)
            
            downloadWithUrlSession(cat: cat)
        }
    }
    
    private func downloadWithUrlSession(cat: Cat) {
        
        guard let imageURL = URL(string: cat.catImageURLString) else {
            return
        }
        
        URLSession.shared.dataTask(with: imageURL) {
            [weak self] data, response, error in
            
            guard let self = self else {
                return
            }
            
            guard let data = data,
                let image = UIImage(data: data) else {
                    //Default Image here
                    DispatchQueue.main.async {
                        self.catImageView.image = UIImage(named: "Geru0")
                    }
                    return
            }
            
            DispatchQueue.main.async {
                self.catImageView.image = image
            } }.resume()
    }
}
