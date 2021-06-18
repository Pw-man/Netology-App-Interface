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
        tableView.delegate = self
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "cellId")
        tableView.register(ProfileHeaderView.self, forHeaderFooterViewReuseIdentifier: reuseID)
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
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pvc = PhotosViewController()
        if indexPath.row == 0 {
            self.navigationController?.pushViewController(pvc, animated: true)
        }
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = PhotosTableViewCell()
            return cell
        default:
            let cell : PostTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! PostTableViewCell
            cell.profilePost = Posts.postsArray[indexPath.row]
            return cell
        }
    }
}

extension UIViewController: UITableViewDelegate {
   
    public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 220
    }

    public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView: ProfileHeaderView = tableView.dequeueReusableHeaderFooterView(withIdentifier: reuseID) as! ProfileHeaderView
        
        return headerView
        
        
    }
}
