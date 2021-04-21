//
//  HousingTableViewCell.swift
//  Rise Together
//
//  Created by Solana Honda on 4/14/21.
//

import UIKit

class HousingTableViewCell: UITableViewCell {
    /*
     TODO: Add outlets connecting the storyboard xib file to this file. Then set up a method
     in passIndex that sets the outlets to the value of the array at that specified index.
     */

    override func awakeFromNib() {
        super.awakeFromNib()
        var addys: [String] = []
        addys.append("123 Main St")
        addys.append("1301 S Adams Blvd, Apt 9")
        addys.append("8900 SW Randy Ave")
        addys.append("456 Wayne St")
        addys.append("2020 Dreary Ln, Apt 2")
        var deets: [String] = []
        deets.append("Three bedroom/two bathroom house. Looking for a roommate to fill the third room.")
        deets.append("Two bedroom/one bathroom apartment. Looking for a roommate.")
        deets.append("Four bedroom/two bathroom house. Looking for two roommates to fill the extra rooms.")
        deets.append("Two bedroom/two bathroom house. Looking for a roommate to fill the second room.")
        deets.append("Three bedroom/two bathroom apartment. Looking for a roommate to fill the third room.")
        var housePics: [UIImage] = []
        housePics.append(UIImage(named: "house1")!)
        housePics.append(UIImage(named: "apt1")!)
        housePics.append(UIImage(named: "house2")!)
        housePics.append(UIImage(named: "house3")!)
        housePics.append(UIImage(named: "apt2")!)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func passIndex(index: Int) {
        //Set labels and images to corresponding index in array here
    }
    
}