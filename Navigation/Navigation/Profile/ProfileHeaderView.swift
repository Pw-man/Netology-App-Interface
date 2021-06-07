//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Роман on 05.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {
    
    @IBOutlet weak var avatarImageView : UIImageView!
    @IBOutlet weak var fullNameLabel : UILabel!
    @IBOutlet weak var statusLabel : UILabel!
    @IBOutlet weak var statusTextField : UITextField!
    @IBOutlet weak var setStatusButton : UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        avatarImageView.layer.cornerRadius = 60
        avatarImageView.clipsToBounds = true
        
        
        //        fullNameLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        fullNameLabel.text = "Coolest Dog Ever"
        fullNameLabel.textColor = .black
        fullNameLabel.numberOfLines = 0
        
        //        statusLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        statusLabel.textColor = .gray
        statusLabel.text = "Waiting for something"
        //        statusLabel.isUserInteractionEnabled = false
        
        setStatusButton.layer.cornerRadius = 4
        setStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        setStatusButton.layer.shadowRadius = 4
        setStatusButton.layer.shadowColor = UIColor.black.cgColor
        setStatusButton.layer.shadowOpacity = 0.7
        setStatusButton.setTitleColor(.white, for: .normal)
        setStatusButton.setTitle("Show Status", for: .normal)
        setStatusButton.backgroundColor = .blue
        setStatusButton.addTarget(self, action: #selector(statusButtonPressed), for: .touchUpInside)
        setStatusButton.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        
        //        statusTextField.backgroundColor = .white
        //        statusTextField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        statusTextField.textColor = .black
        statusTextField.layer.cornerRadius = 12
        statusTextField.layer.borderWidth = 1
        //        statusTextField.layer.borderColor = UIColor.black.cgColor
    }
    
    private var statusText: String = " "
    
    @objc private func statusButtonPressed() {
        
        statusTextChanged(statusTextField)
        statusLabel.text = statusText
        
        guard let text = statusLabel.text else {
            return
            
        }
        print("\(text)")
    }
    
    @objc private func statusTextChanged(_ textFieldInternal: UITextField) {
        statusText = textFieldInternal.text!
    }
    
}
