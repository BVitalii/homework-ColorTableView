//
//  CustomTableViewCell.swift
//  ColorTableView
//
//  Created by Виталий Бородулин on 13.08.2023.
//

import UIKit
protocol CustomTableViewDelegate: AnyObject {
    func myButtonTapped(with title:String)
}

class CustomTableViewCell: UITableViewCell {
    
    var delegate: CustomTableViewDelegate!
    
    var title: String = ""
    
    @IBOutlet weak var myButton: UIButton!
    
    @IBAction func myButtonPressed(_ sender: Any) {
        delegate?.myButtonTapped(with: title )
    }
    
    func configureButton(with title:String) {
        self.title = title
        myButton.setTitle(title, for: .normal)
        myButton.tintColor = .gray        
       }
    
    
}

    


