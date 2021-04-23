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
    }
    
    func passIndex(index: Int, month: String) {
        var blankNum: Int
        var stopNum: Int
        switch month {
        case "April 2021":
            blankNum = 4
            stopNum = 34
            break
        case "May 2021":
            blankNum = 6
            stopNum = 37
            break
        case "June 2021":
            blankNum = 2
            stopNum = 32
            break
        case "July 2021":
            blankNum = 4
            stopNum = 35
            break
        case "Aug 2021":
            blankNum = 0
            stopNum = 31
            break
        case "Sept 2021":
            blankNum = 3
            stopNum = 33
            break
        case "Oct 2021":
            blankNum = 5
            stopNum = 36
            break
        case "Nov 2021":
            blankNum = 1
            stopNum = 31
            break
        case "Dec 2021":
            blankNum = 3
            stopNum = 34
            break
        default:
            blankNum = 0
            stopNum = 35
            break
        }
        if index > blankNum && index <= stopNum {
            num.text = String(index - blankNum)
        }
        else {
            num.text = ""
        }
    }
}
