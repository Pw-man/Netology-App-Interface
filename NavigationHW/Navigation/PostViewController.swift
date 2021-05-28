//
//  PostViewController.swift
//  Navigation
//
//  Created by Роман on 23.04.2021.
//

import UIKit

class PostViewController: UIViewController {

    var post: Post? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       title = post?.title
    }
}

