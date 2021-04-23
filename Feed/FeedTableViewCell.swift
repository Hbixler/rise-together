//
//  FeedTableViewCell.swift
//  Rise Together
//
//  Created by Hailey Bixler on 4/19/21.
//

import UIKit

class FeedTableViewCell: UITableViewCell {

    var username: [String] = []
    var caption: [String] = []
    var picture: [UIImage] = []
    @IBOutlet weak var user: UILabel!
    @IBOutlet weak var postPic: UIImageView!
    @IBOutlet weak var deets: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        username.append("PamBeasly")
        username.append("JimHalpert")
        username.append("MichaelScott")
        username.append("KevinMalone")
        username.append("KellyKapoore")
        
        caption.append("I've been loving my volunteer postition at Open Door Mission. If anyone is interested in joining me, let me know!")
        caption.append("I just bought my first house! So thankful!")
        caption.append("It's been one year since I planted this tree, look how much it has grown!")
        caption.append("My kiddo just started fifth grade! So glad I got to drop him off on this special day!")
        caption.append("Just got a job at Burger King!")
        
        picture.append(UIImage(named: "post1")!)
        picture.append(UIImage(named: "post2")!)
        picture.append(UIImage(named: "post3")!)
        picture.append(UIImage(named: "post4")!)
        picture.append(UIImage(named: "post5")!)
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func passIndex(index: Int) {
        //Set labels and images to corresponding index in array here
        user.text = username[index]
        postPic.image = picture[index]
        deets.text = caption[index]
    }
    
}
