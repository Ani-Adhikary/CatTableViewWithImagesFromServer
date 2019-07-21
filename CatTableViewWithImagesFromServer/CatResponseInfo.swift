//
//  CatResponseInfo.swift
//  CitiesTableViewWithImages
//
//  Created by Ani Adhikary on 10/02/19.
//  Copyright © 2019 TheTechStory. All rights reserved.
//

import Foundation

struct Cat {
    let catName: String
    let catImageURLString: String
    let catDesc: String
}

class CatResponseInfo {
    
    static func getCats() -> [Cat] {
        let cats = [
            Cat(catName: "Murku", catImageURLString: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhArQ6eoduYnPeUamzFGf9lFwp3wOJN3ZHVRQtjqU5SjhSVg_x8A", catDesc: ""),
            Cat(catName: "Geru and Tilu", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Geru and Tilu again", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Chotu sleeping", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Chotu standing", catImageURLString: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhArQ6eoduYnPeUamzFGf9lFwp3wOJN3ZHVRQtjqU5SjhSVg_x8A", catDesc: ""),
            Cat(catName: "Tilu lying", catImageURLString: "Geru5", catDesc: ""),
            Cat(catName: "White Chotu sleeping", catImageURLString: "Geru6", catDesc: ""),
            Cat(catName: "Geru lying in floor", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Geru closeup", catImageURLString: "Geru8", catDesc: ""),
            Cat(catName: "Chotus Group photo", catImageURLString: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhArQ6eoduYnPeUamzFGf9lFwp3wOJN3ZHVRQtjqU5SjhSVg_x8A", catDesc: ""),
            
            Cat(catName: "Geru closeup with my hand", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Murku sitting Geru standing far", catImageURLString: "Geru010", catDesc: ""),
            Cat(catName: "Baby Geru and Murku", catImageURLString: "Geru11", catDesc: ""),
            Cat(catName: "Baby Geru and Murku again", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Baby Geru in Cooker", catImageURLString: "Geru13", catDesc: ""),
            Cat(catName: "Geru sitting in Window", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Geru and Murku sitting in Window", catImageURLString: "Geru15", catDesc: ""),
            Cat(catName: "Geru and Murku sitting in Window again", catImageURLString: "Geru16", catDesc: ""),
            Cat(catName: "Baby Geru Sitting", catImageURLString: "Geru17", catDesc: ""),
            Cat(catName: "Baby Geru Standing", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Baby Geru Sitting", catImageURLString: "Geru19", catDesc: ""),
            Cat(catName: "Baby Murku Standing", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Murku with babies", catImageURLString: "Geru020", catDesc: ""),
            Cat(catName: "Geru holding Bubai's hand", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Murku sitting", catImageURLString: "Geru22", catDesc: ""),
            Cat(catName: "Tilu sitting", catImageURLString: "Geru022", catDesc: ""),
            Cat(catName: "Geru sleeping in Bubai's hand", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Geru and Murku exploring box", catImageURLString: "Geru023", catDesc: ""),
            Cat(catName: "Geru sitting in chair", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Geru Peekaboo", catImageURLString: "https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", catDesc: ""),
            Cat(catName: "Geru sitting in floor", catImageURLString: "Geru26", catDesc: ""),
            Cat(catName: "Geru sleeping under blanket", catImageURLString: "https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", catDesc: ""),
            Cat(catName: "Chotu sleeping", catImageURLString: "Geru28", catDesc: ""),
            Cat(catName: "Geru standing", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Chotu with Mom", catImageURLString: "https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", catDesc: ""),
            Cat(catName: "Geru with neck piece", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Fat Murku sitting", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Geru with white chotu", catImageURLString: "https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", catDesc: ""),
            Cat(catName: "Chotus 1 week old", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Murku with neck piece", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Geru yawning", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Baby white chotu", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Geru Murku together in bed", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Murku with chotu", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Chotu sleeping", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Geru portrait", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Geru Standing", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Geru closeup", catImageURLString: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqf6D85OdaNBCtbhoFuf4NFn1LJZz1ji4IA7j71bRNte9vH-QFzg", catDesc: ""),
            Cat(catName: "Geru sitting in bed", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Geru in bed", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Tilu closeup", catImageURLString: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqf6D85OdaNBCtbhoFuf4NFn1LJZz1ji4IA7j71bRNte9vH-QFzg", catDesc: ""),
            Cat(catName: "Geru with white chotu", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Geru and Murku exploring box", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Murku after bath", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Geru Murku playing on table", catImageURLString: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqf6D85OdaNBCtbhoFuf4NFn1LJZz1ji4IA7j71bRNte9vH-QFzg", catDesc: ""),
            Cat(catName: "Chotu getting sleepy", catImageURLString: "Geru47", catDesc: ""),
            Cat(catName: "Chotu awake", catImageURLString: "Geru48", catDesc: ""),
            Cat(catName: "Geru sleeping on pillow", catImageURLString: "Geru49", catDesc: ""),
            Cat(catName: "Geru with Browney", catImageURLString: "https://breedspets.com/wp-content/uploads/2018/09/09-365x260.jpg", catDesc: ""),
            Cat(catName: "Chotu with Mom", catImageURLString: "Geru51", catDesc: ""),
            Cat(catName: "Geru standing and thinking", catImageURLString: "Geru52", catDesc: ""),
            Cat(catName: "Chotu getting playful", catImageURLString: "Geru53", catDesc: ""),
            Cat(catName: "Geru and Murku on bed", catImageURLString: "Geru54", catDesc: ""),
            Cat(catName: "Geru Murku waiting for Bubai outside bathroom", catImageURLString: "Geru55", catDesc: ""),
            Cat(catName: "Baby Geru in Window", catImageURLString: "Geru56", catDesc: ""),
            Cat(catName: "Chotu sleeping peacefully", catImageURLString: "Geru57", catDesc: "")
        ]
        
        return cats
    }
}
