//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Роман on 05.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private(set) lazy var addFriendUIButton: UIButton = {
        let button = UIButton()
        button.setTitle("Add to friend's", for: .normal)
        button.addTarget(self, action: #selector(buttonPress), for: .touchUpInside)
        button.backgroundColor = .blue
        return button
    }()
    
    @objc func buttonPress() {
        print("Кнопка нажата")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(addFriendUIButton)
        
        addFriendUIButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            addFriendUIButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            addFriendUIButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0),
            addFriendUIButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0)
        ])
    }
    
}
