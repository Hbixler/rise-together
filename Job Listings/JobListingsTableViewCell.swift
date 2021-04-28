//
//  JobListingsTableViewCell.swift
//  Rise Together
//
//  Created by Hailey Bixler on 4/15/21.
//

import UIKit

class JobListingsTableViewCell: UITableViewCell {
    /*
     TODO: Add outlets connecting the storyboard xib file to this file. Then set up a method
     in passIndex that sets the outlets to the value of the array at that specified index.
     */
    
    @IBOutlet weak var jobName: UILabel!
    @IBOutlet weak var jobImage: UIImageView!
    var index: Int?
    var delegate: showDetails?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //Add array with details here
    }
    
    @IBAction func detailsButton(_ sender: Any) {
        delegate?.showDetails(index: index!)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func passIndex(name: String, image: UIImage, index: Int) {
        //Set labels and images to corresponding index in array here
        jobName.text = name
        jobImage.image = image
        self.index = index
    }
    
}
