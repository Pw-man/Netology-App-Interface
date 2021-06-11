//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Роман on 05.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit


class ProfileViewController: UIViewController {
    
    
    private var tableView = UITableView(frame: .zero, style: .grouped)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }
    
    
    private func setupTableView() {
        view.addSubview(tableView)
        tableView.onAutoLayout()
        tableView.dataSource = self
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "cellId")
        let constraints = [
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
]
        NSLayoutConstraint.activate(constraints)
        
        
    }
}

extension UIViewController: UITableViewDataSource {
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Posts.postsArray.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : PostTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! PostTableViewCell
        cell.profilePost = Posts.postsArray[indexPath.row]
        return cell
    }
    
}

extension UIViewController: UITableViewDelegate {
    
}
