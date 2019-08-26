//
//  TabBarItem.swift
//  Tmall
//
//  Created by panzhijun on 2019/8/23.
//  Copyright © 2019 panzhijun. All rights reserved.
//

import SwiftUI
import CoreLocation

struct TabBarItem: Hashable, Codable, Identifiable {
    
    var id: Int
    
    var title: String
    
    var imgNormal: String
    
    var imgSelect: String

}

struct HomeLoopItem: Hashable, Codable, Identifiable {
    
    var id: Int
    
    var imgName: String
    
    var bgColor: String

    var featureImage: Image? {
         return Image(
             ImageStore.loadImage(name: imgName),
             scale: 2,
             label: Text(verbatim: imgName))
     }
    
    var backColor: Color {
        
        return UIColorFromRGB(bgColor)
    }

}


struct CategoryItem: Hashable, Codable, Identifiable {
    
    var id: Int
    
    var imageName: String
    
    var category: String
    

}

struct CategoryBottomItem: Hashable, Codable, Identifiable {
    
    var id: Int
    
    var imageName: String
    
    var category: String
    
    var detail: String
    

}



