//
//  ProfileViewController.swift
//  Less7HW
//

//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var avaImageView: UIImageView!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var eMailLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    private let dataProvider = DataProviderService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loadUserDataButtonAction(_ sender: UIButton) {
        
        dataProvider.loadUserData { user in
            updateUI(with: user)
        }
    }
    
    @IBAction func loadAdminDataButtonAction(_ sender: UIButton) {
        
        dataProvider.loadAdminData { admin in
            updateUI(with: admin)
        }
    }
    
    func updateUI(with data: ProfileData) {
        
        avaImageView.image = UIImage(named: data.avatarName)
        firstNameLabel.text = data.firstName
        lastNameLabel.text = data.lastName
        eMailLabel.text = data.email
        addressLabel.text = data.address
    }
}
