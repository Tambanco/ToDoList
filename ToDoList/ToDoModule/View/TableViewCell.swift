//
//  TableViewCell.swift
//  ToDoList
//
//  Created by tambanco 🥳 on 15.03.2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static let reuseId = "taskCell"
    
    let taskLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 27)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier:TableViewCell.reuseId)
        
        addSubview(taskLabel)
        taskLabel.translatesAutoresizingMaskIntoConstraints = false
        taskLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        taskLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
