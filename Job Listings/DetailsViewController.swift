//
//  DetailsViewController.swift
//  Rise Together
//
//  Created by Hailey Bixler on 4/27/21.
//

import UIKit

class DetailsViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var titleString: String?
    var details: String?
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = titleString
        detailsLabel.text = details
        imageView.image = image
    }

}
