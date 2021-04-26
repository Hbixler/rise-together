//
//  AddJobViewController.swift
//  Rise Together
//
//  Created by Hailey Bixler on 4/26/21.
//

import UIKit

class AddJobViewController: UIViewController, ImagePickerDelegate, UITextFieldDelegate {
    
    
    func didSelect(image: UIImage?) {
        imageView.image = image
    }

    @IBOutlet weak var companyTextField: UITextField!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    var delegate: jobData?
    var imagePicker: ImagePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imagePicker = ImagePicker(presentationController: self, delegate: self)
        // Do any additional setup after loading the view.
    }
    @IBAction func changeImage(_ sender: Any) {
        self.imagePicker.present(from: sender as! UIView)
    }
    @IBAction func addJob(_ sender: Any) {
        delegate?.addJob(title: titleTextField.text!, details: companyTextField.text!, image: imageView.image!)
        companyTextField.text = ""
        titleTextField.text = ""
        imageView.image = nil
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
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
