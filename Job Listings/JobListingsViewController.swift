//
//  JobListingsViewController.swift
//  Rise Together
//
//  Created by Hailey Bixler on 4/15/21.
//

import UIKit

class JobListingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, jobData, showDetails {
    
    func showDetails(index: Int) {
        currentIndex = index
        performSegue(withIdentifier: "toDetails", sender: self)
    }
    
    
    func addJob(title: String, details: String, image: UIImage) {
        job.append(title)
        deets.append(details)
        jobPics.append(image)
        tableView.reloadData()
    }
    
    var job: [String] = []
    var deets: [String] = []
    var jobPics: [UIImage] = []
    var currentIndex: Int?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return job.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "jobListingsCell") as! JobListingsTableViewCell
        cell.delegate = self
        cell.passIndex(name: job[indexPath.row], image: jobPics[indexPath.row], index: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 194
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
        job.append("West High School Night Janitor")
        
        deets.append("Full-time construction worker. Some experience wanted. Seasonal worker. Wages $11-$14 per hour. Look on our website for the application.")
        deets.append("Part-time lawncare worker. Some experience wanted but not necessary. Seasonal worker. Wages $9-$12 per hour. Look on our website for the application.")
        deets.append("Part-time cashier. No experience needed. Wages $9-$12 per hour. Look on our website for the application.")
        deets.append("After school babysitter for two kids ages 5 and 9. Some experience or references needed. Wages $12-$17 per hour. Call (402)634-4583 if interested.")
        deets.append("Full-time night shift janitor. Some experience wanted but not necessary. Seasonal worker. Wages $15-$20 per hour. Look on our website for the application.")
        
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
        else if segue.identifier == "toDetails" {
            let newVC = segue.destination as! DetailsViewController
            newVC.titleString = job[currentIndex!]
            newVC.details = deets[currentIndex!]
            newVC.image = jobPics[currentIndex!]
        }
    }
    
}
    
protocol jobData {
    func addJob(title: String, details: String, image: UIImage)
}
