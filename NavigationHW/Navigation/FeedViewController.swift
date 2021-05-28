//
//  FeedViewController.swift
//  Navigation
//
//  Created by Роман on 23.04.2021.
//

import UIKit

public struct Post {
     var title: String
 }

var post = Post(title: "Selected Headline")

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "lastPost" else {
            return
        }
        
        guard let postViewController = segue.destination as? PostViewController
        else {
            return
        }
        postViewController.post = post

}
}
