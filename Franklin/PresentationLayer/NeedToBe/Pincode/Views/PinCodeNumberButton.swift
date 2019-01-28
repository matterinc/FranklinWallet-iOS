//
//  PinCodeNumberButton.swift
//  DiveLane
//
//  Created by Anton Grigorev on 12/09/2018.
//  Copyright © 2018 Matter Inc. All rights reserved.
//

import UIKit

class PinCodeNumberButton: UIButton {
    
    let animation = AnimationController()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //self.layer.masksToBounds = false
        self.layer.cornerRadius = self.bounds.size.width / 2
        self.clipsToBounds = true
        self.backgroundColor = Colors.background
        self.setTitleColor(Colors.textDarkGray, for: .normal)
        self.addTarget(self, action: #selector(buttonTouchedDown(_:)), for: .touchDown)
        self.addTarget(self, action: #selector(buttonTouchedUp(_:)), for: .touchCancel)
        self.addTarget(self, action: #selector(buttonTouchedDown(_:)), for: .touchDragInside)
        self.addTarget(self, action: #selector(buttonTouchedUp(_:)), for: .touchDragOutside)
    }
    
    @objc func buttonTouchedDown(_ sender: UIButton) {
        animation.pressButtonStartedAnimation(for: sender, color: Colors.mostLightGray)
    }
    
    @objc func buttonTouchedUp(_ sender: UIButton) {
        animation.pressButtonCanceledAnimation(for: sender, color: Colors.mostLightGray)
    }
}
