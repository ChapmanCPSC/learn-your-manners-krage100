//
//  Shape.swift
//  ShapeDetails
//
//  Created by Burns, Ryan Thomas on 4/11/16.
//  Copyright © 2016 Burns, Ryan Thomas. All rights reserved.
//

import UIKit

protocol MannerP {
    
    var color : UIColor { get }
    var name : String { get }
    var imgName : String { get }
    var detail : String { get }
    
    func draw(rect : CGRect) -> UIView
    
}