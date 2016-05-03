//
//  MannerP.swift
//  ShapeDetails
//
//  Created by Krager, Andrew on 4/27/16.
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
