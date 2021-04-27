//
//  JobListingsViewController.swift
//  Rise Together
//
//  Created by Hailey Bixler on 4/15/21.
//

import UIKit

class JobListingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, jobData {
    
    func addJob(title: String, details: String, image: UIImage) {
        job.append(title)
        deets.append(details)
        jobPics.append(image)
        tableView.reloadData()
    }
    
    
    var job: [String] = []
    var deets: [String] = []
    var jobPics: [UIImage] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return job.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "jobListingsCell") as! JobListingsTableViewCell
        cell.passIndex(name: job[indexPath.row], image: jobPics[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 251
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "JobListingsTableViewCell", bundle: nil), forCellReuseIdentifier: "jobListingsCell")
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addJob" {
            let newVC = segue.destination as! AddJobViewController
            newVC.delegate = self
        }
    }
    
}
    
protocol jobData {
    func addJob(title: String, details: String, image: UIImage)
}
