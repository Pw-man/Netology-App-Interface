//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by Роман on 22.04.2021.
//

import UIKit

class ProfileView: UIView {
    @IBOutlet var profileImageView: UIImageView! {
        didSet {
            profileImageView.image = #imageLiteral(resourceName: "KeanuCyber")
        }
    }
    @IBOutlet var profileNameLabel: UILabel!
    @IBOutlet var profileBirthdayLabel: UILabel!
    @IBOutlet var profileLocationLabel: UILabel!
    @IBOutlet var profileDescriptionTextView: UITextView!
}
