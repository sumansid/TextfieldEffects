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
            CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
        
    }
    
    func addShadowToTextField(color: UIColor = UIColor.gray, cornerRadius: CGFloat) {

     self.backgroundColor = UIColor.white
     self.layer.masksToBounds = false
     self.layer.shadowColor = color.cgColor
     self.layer.shadowOffset = CGSize(width: 0, height: 0)
     self.layer.shadowOpacity = 1.0
     self.backgroundColor = .white
     self.layer.cornerRadius = cornerRadius
        
    }
    
    func setBottomBorder() {
      self.borderStyle = .none
      self.layer.backgroundColor = UIColor.white.cgColor
      self.layer.masksToBounds = false
      self.layer.shadowColor = UIColor.gray.cgColor
      self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
      self.layer.shadowOpacity = 1.0
      self.layer.shadowRadius = 0.0
        
    }
    
    func changePlaceholderColor(placeholder : String, color: UIColor) {
        self.attributedPlaceholder = NSAttributedString(string: placeholder,
        attributes: [NSAttributedString.Key.foregroundColor: color])
    }   
}
