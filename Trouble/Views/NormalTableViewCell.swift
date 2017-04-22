//
//  NormalTableViewCell.swift
//  Trouble
//
//  Created by YaBoyWonder on 4/13/17.
//  Copyright © 2017 Apache-2.0 All rights reserved.
//

import UIKit

private let kAccessoryWidth: CGFloat = 20

class NormalTableViewCell : UITableViewCell {
    
    override func willMove(toSuperview newSuperview: UIView?) {
        if newSuperview == nil || accessoryType != .disclosureIndicator {
            return
        }
        if accessoryView == nil {
            accessoryView = LTTableViewCellDeclosureIndicator()
            accessoryView!.frame = CGRect(
                x: 0,
                y: 0,
                width: kAccessoryWidth,
                height: kAccessoryWidth
            )
        }
    }
    
}
