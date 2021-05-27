//
//  ErrorViewController.swift
//  Navigation
//
//  Created by Роман on 23.04.2021.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
        
    @IBAction func tapButton(_ sender: Any) {
        
       let errorNature = UIAlertController(title: "Ошибка", message: "Вы в чёрном списке у пользователя", preferredStyle: .alert)
        
        let exitAction = UIAlertAction(title: "Заблокировать username", style: .destructive) {_ in
            print("Пользователь в блокирует в ответ")
        }
        
        let humblenessAction = UIAlertAction(title: "Окей", style: .default) {_ in
            print("Пользователь смирился")
    }
        errorNature.addAction(exitAction)
        errorNature.addAction(humblenessAction)
        present(errorNature, animated: true, completion: nil)

}
}
