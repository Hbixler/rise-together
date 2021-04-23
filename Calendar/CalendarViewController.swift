//
//  CalendarViewController.swift
//  Rise Together
//
//  Created by Hailey Bixler on 4/15/21.
//

import UIKit

class CalendarViewController: UIViewController, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "calendarCell", for: indexPath) as! CalendarCollectionViewCell
        cell.passIndex(index: indexPath.row + 1)
        return cell
    }
    public var dates = ["April 2021", "May 2021", "June 2021", "July 2021", "Aug 2021", "Sept 2021", "Oct 2021", "Nov 2021", "Dec 2021", ]
    var datechange = 0

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBAction func rightButtonPressed(_ sender: Any) {
        if datechange < (dates.count - 1) {
            datechange = datechange + 1
            dateLabel.text = dates[datechange]
            
        }
    }
    
    @IBAction func leftButtonPressed(_ sender: Any) {

        if datechange > 0 {
            datechange = datechange - 1
            dateLabel.text = dates[datechange]
                   
               }
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
