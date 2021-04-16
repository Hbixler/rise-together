//
//  JobListingsViewController.swift
//  Rise Together
//
//  Created by Hailey Bixler on 4/15/21.
//

import UIKit

class JobListingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var jobListingArr = ["Placeholder waiting for Noa"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jobListingArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "jobListingsCell")
        return cell!
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
