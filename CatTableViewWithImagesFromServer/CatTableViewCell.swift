//
//  CatTableViewCell.swift
//  CitiesTableViewWithImages
//
//  Created by Ani Adhikary on 10/02/19.
//  Copyright © 2019 TheTechStory. All rights reserved.
//

import UIKit

class CatTableViewCell: UITableViewCell {

    @IBOutlet weak var catImageView: UIImageView!
    @IBOutlet weak var catNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    func setupData(cat: Cat) {
        catNameLabel.text = cat.catName
        
        /*if let url = URL(string: cat.catImageURLString) {
            if let data = try? Data(contentsOf: url),
                let image = UIImage(data: data) {
                catImageView.image = image
            } else {
                //print("Failedd hereeee---------------")
                catImageView.image = UIImage(named: "Geru0")
            }
            
        } else {
            print("Failedd---------------")
        }*/
        
        //Both works
        //downloadWithGlobalQ(cat: cat)
        downloadWithUrlSession(cat: cat)
        
    }
    
    private func downloadWithGlobalQ(cat: Cat) {
        DispatchQueue.global(qos: .utility).async {
            [weak self] in
            guard let self = self else {
                return
            }
            
            guard let url = URL(string: cat.catImageURLString) else {
                return
            }
            
            guard let data = try? Data(contentsOf: url),
                let image = UIImage(data: data) else {
                    //Default Image here
                    DispatchQueue.main.async {
                        self.catImageView.image = UIImage(named: "Geru0")
                    }
                    return
            }
            
            DispatchQueue.main.async {
                self.catImageView.image = image
            }
            
            //This is not preferable. Need to update the UI in main thread.
//            if let data = try? Data(contentsOf: url),
//                let image = UIImage(data: data) {
//                self.catImageView.image = image
//            } else {
//                self.catImageView.image = UIImage(named: "Geru0")
//            }
        }
    } //end
    
    
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
