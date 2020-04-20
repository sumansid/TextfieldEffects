//
//  Extensions.swift
//  Extensions for textfields
//
//  Created by Suman Sigdel on 2/2/20.
//  Copyright © 2020 Suman Sigdel. All rights reserved.
//

import UIKit


extension UITextField {
    
    func setIcon(_ image: UIImage) {
        let iconView = UIImageView(frame:
            CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.tintColor = .blue
        iconView.image = image
        let iconContainerView: UIView = UIView(frame:
            CGRect(x: 20, y: 0, width: 40, height: 30)) // chnaged width from 30 to 40 to give some space between icon and corser
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
        
    }
    
    func addShadowToTextField(color: UIColor = UIColor.gray, cornerRadius: CGFloat) {
        //removed setting the background color so it can be set by the user
        //     self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        self.layer.masksToBounds = false
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowOpacity = 1.0
        //     self.backgroundColor = .white
        self.layer.cornerRadius = cornerRadius
        
    }
    
    func setBottomBorder(color : UIColor = UIColor.white, shadowColor: UIColor = UIColor.gray) {
        self.borderStyle = .none
        self.layer.backgroundColor = color.cgColor
        self.layer.masksToBounds = false
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
        
    }
    
    func changePlaceholderColor(placeholder : String, color: UIColor) {
        self.attributedPlaceholder = NSAttributedString(string: placeholder,
                                                        attributes: [NSAttributedString.Key.foregroundColor: color])
        
    }
    
    //Added this to setup the text attributes
    func setTextAlignment(textAlignment : NSTextAlignment = .left, fontSize : CGFloat = 14.0,weight : UIFont.Weight = .regular) {
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: weight)
        
    }
    
    //Added this for rounded corners
    func addRoundedCorner(cornerRadius: CGFloat, borderWidth : CGFloat = 1.0,color : UIColor = UIColor.label) {
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = color.cgColor
        
    }
    
    
}








