//
//  viewShadow.swift
//  viewShadow
//
//  Created by Yash Rathod on 07/02/19.
//  Copyright © 2019 Disha Technology. All rights reserved.
//

import Foundation
import UIKit

open class viewShadow:UIView {
    
    //For top and bottom
    open func addShadow(location: VerticalLocation, color: UIColor = .black, opacity: Float = 0.5, radius: CGFloat = 5.0) {
        switch location {
        case .bottom:
            addShadow(offset: CGSize(width: 0, height: 10), color: color, opacity: opacity, radius: radius)
        case .top:
            addShadow(offset: CGSize(width: 0, height: -10), color: color, opacity: opacity, radius: radius)
        }
    }
    open func addShadow(offset: CGSize, color: UIColor = .black, opacity: Float = 0.5, radius: CGFloat = 5.0) {
        self.layer.masksToBounds = false
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = offset
        self.layer.shadowOpacity = opacity
        self.layer.shadowRadius = radius
    }
    
    //For all direction
   open func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: -1, height: 1)
        layer.shadowRadius = 1
        
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
   open func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offSet
        layer.shadowRadius = radius
        
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    open func cornerRadiusAdd(radius:CGFloat,view:UIView) {
        view.layer.cornerRadius = radius
        view.clipsToBounds = true
    }
    
    open func cornerRadiusAndShadow(baseView:UIView,parentView:UIView,radius:CGFloat,forShadow scale:Bool = true) {
        
        //Create view for shadow
        let shadowView = UIView(frame: CGRect(x: baseView.frame.origin.x, y: baseView.frame.origin.y, width: baseView.frame.width, height: baseView.frame.height))
        shadowView.layer.masksToBounds = false
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOpacity = 0.5
        shadowView.layer.shadowOffset = CGSize(width: -1, height: 1)
        shadowView.layer.shadowRadius = 1
        
        shadowView.layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        shadowView.layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
        shadowView.backgroundColor = UIColor.clear
        parentView.addSubview(shadowView)
        
        self.cornerRadiusAdd(radius: radius, view: baseView)
    }
}
public enum VerticalLocation: String {
    case bottom
    case top
}
