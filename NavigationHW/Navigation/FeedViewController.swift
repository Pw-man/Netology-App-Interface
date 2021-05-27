//
//  FeedViewController.swift
//  Navigation
//
//  Created by Роман on 23.04.2021.
//

import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    public struct Post {
         var title: String
     }
    var post = Post(title: "Последняя публикация")
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "lastPost" else {
            return
        }
        
        guard let postViewController = segue.destination as? PostViewController
        else {
            return
        }
        postViewController.title = post.title
}
}
