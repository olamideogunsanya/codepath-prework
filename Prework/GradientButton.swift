//
//  GradientButton.swift
//  Prework
//
//  Created by Ola Ogunsanya on 1/30/22.
//

import UIKit

class GradientButton: UIButton {
    let gradient = CAGradientLayer()
    
    init(colors: [UIColor]){
        super.init(frame: .zero)
        gradient.frame = bounds
        gradient.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemTeal.cgColor,
            ]
            layer.addSublayer(gradient)
    }
    
    required init?(coder: NSCoder){
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = bounds
    }
}
