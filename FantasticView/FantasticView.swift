//
//  FantasticView.swift
//  FantasticView
//
//  Created by Ion Utale on 14/03/2018.
//  Copyright © 2018 ion.utale. All rights reserved.
//

import UIKit

class FantasticView : UIView {
    let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var colorCounter = 0

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // The Main Stuff
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in  //1
            UIView.animate(withDuration: 2.0) {  //2
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor  //3
                self.colorCounter+=1  //4
            }
        }
        
        scheduledColorChanged.fire()  //5
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // You don't need to implement this
    }
}
