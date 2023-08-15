//
//  ViewController.swift
//  ColorTableView
//
//  Created by Виталий Бородулин on 13.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    var arrayColor: [String] = [
        "черный",
        "красный",
        "синий"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource, CustomTableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayColor.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as? CustomTableViewCell else { return  UITableViewCell() }
        
        if arrayColor[indexPath.row] == "черный" {
            cell.contentView.backgroundColor = UIColor.black
        } else if arrayColor[indexPath.row] == "красный" {
            cell.contentView.backgroundColor = UIColor.red
        } else if arrayColor[indexPath.row] == "синий" {
            cell.contentView.backgroundColor = UIColor.systemBlue
        }
        
        cell.configureButton(with: arrayColor[indexPath.row])
        cell.delegate = self
        return cell
    }
    func myButtonTapped(with text: String) {
        if text == "черный" {
            myTableView.backgroundColor = .black
        } else if text == "красный" {
            myTableView.backgroundColor = .red
        } else if text == "синий" {
            myTableView.backgroundColor = .systemBlue
        }
        
        
    }
}

