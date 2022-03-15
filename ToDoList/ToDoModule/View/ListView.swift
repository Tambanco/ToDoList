//
//  ListView.swift
//  ToDoList
//
//  Created by tambanco 🥳 on 15.03.2022.
//

import UIKit

class ListView: UIView {

    let addTaskButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(systemName: "plus")
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 30, bottom: 5, trailing: 30)
        let button = UIButton(configuration: configuration, primaryAction: nil)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(addTaskButton)
        addTaskButton.translatesAutoresizingMaskIntoConstraints = false
        addTaskButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 300).isActive = true
        addTaskButton.topAnchor.constraint(equalTo: topAnchor, constant: 100).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
