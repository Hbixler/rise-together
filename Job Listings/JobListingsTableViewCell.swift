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
    override func awakeFromNib() {
        super.awakeFromNib()
        //Add array with details here
        var job: [String] = []
        job.append("Hausmann Construction Worker")
        job.append("Jimmy's Lawncare Services")
        job.append("McDonald's Worker")
        job.append("Part-Time Babysitter")
        job.append("High School Night Janitor")
        var deets: [String] = []
        deets.append("Full-time construction worker. Some experience wanted. ")
        deets.append("")
        deets.append("")
        deets.append("")
        deets.append("")
        var jobPics: [UIImage] = []
        jobPics.append(UIImage(named: "job1")!)
        jobPics.append(UIImage(named: "job2")!)
        jobPics.append(UIImage(named: "job3")!)
        jobPics.append(UIImage(named: "job4")!)
        jobPics.append(UIImage(named: "job5")!)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func passIndex(index: Int) {
        //Set labels and images to corresponding index in array here
    }
    
}
