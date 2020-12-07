//
//  CustomLabel.swift
//  Fahrenheit
//
//  Created by Максим Соловьёв on 07.12.2020.
//

import Foundation
import UIKit

class CustomLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

   private func setup() {
    translatesAutoresizingMaskIntoConstraints = false
    text = "Converter"
    font = UIFont(name: "Copperplate", size: 40)
    textColor = .systemBlue
    backgroundColor = .clear
    textAlignment = .center
    }
    
    func setupLabelText(text: String) {
        self.text = text
    }
}
