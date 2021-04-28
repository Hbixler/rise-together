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

    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var houseImage: UIImageView!
    var index: Int?
    var delegate: showDetails?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func detailsButton(_ sender: Any) {
        delegate?.showDetails(index: index!)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func passIndex(newAddy: String, newImg: UIImage, index: Int) {
        //Set labels and images to corresponding index in array here
        address.text = newAddy
        houseImage.image = newImg
        self.index = index
    }
}

protocol showDetails {
    func showDetails(index: Int)
}
