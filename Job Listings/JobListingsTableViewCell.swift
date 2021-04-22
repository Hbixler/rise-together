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
    var job: [String] = []
    var deets: [String] = []
    var jobPics: [UIImage] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //Add array with details here
        
        job.append("Hausmann Construction Worker")
        job.append("Jimmy's Lawncare Services")
        job.append("McDonald's Worker")
        job.append("Part-Time Babysitter")
        job.append("High School Night Janitor")
        
        deets.append("Full-time construction worker. Some experience wanted. Seasonal worker. Wages $11-$14 per hour.")
        deets.append("Part-time lawncare worker. Some experience wanted but not necessary. Seasonal worker. Wages $9-$12 per hour.")
        deets.append("Part-time cashier. No experience needed. Wages $9-$12 per hour.")
        deets.append("After school babysitter for two kids ages 5 and 9. Some experience or references needed. Wages $12-$17 per hour.")
        deets.append("Full-time night shift janitor. Some experience wanted but not necessary. Seasonal worker. Wages $15-$20 per hour.")
        
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
