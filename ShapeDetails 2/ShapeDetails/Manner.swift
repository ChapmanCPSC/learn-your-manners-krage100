//
//  Manner.swift
//  ShapeDetails
//
//  Created by Krager, Andrew on 4/27/16.
//  Copyright © 2016 Burns, Ryan Thomas. All rights reserved.
//

import UIKit

struct Manner : MannerP{
    
    var color : UIColor
    var name : String
    var imgName : String
    var detail : String
    
    func draw(rect: CGRect) -> UIView{
        let image = UIImage(named: imgName)
        let v = UIImageView(image: image!)
        
        v.backgroundColor = self.color
        v.frame = CGRect(x: 0, y: 5, width: 30, height: 30)
        return v
    }
    
}
