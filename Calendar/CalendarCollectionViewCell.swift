//
//  CalendarCollectionViewCell.swift
//  Rise Together
//
//  Created by Hailey Bixler on 4/20/21.
//

import UIKit

class CalendarCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var num: UILabel!
    override func awakeFromNib() {
        print("Woke up")
    }
    
    func passIndex(index: Int) {
        num.text = String(index)
    }
}
