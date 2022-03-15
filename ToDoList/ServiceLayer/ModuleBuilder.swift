//
//  ModuleBuilder.swift
//  ToDoList
//
//  Created by tambanco 🥳 on 15.03.2022.
//

import Foundation
import UIKit

protocol Builder: AnyObject {
   static func createKidsModule() -> UIViewController
}

class ModuleBuilder: Builder {
    static func createKidsModule() -> UIViewController {
        let view = ListViewViewController()
        let model = Task(task: "0")
        let presenter = ListViewPresenter(view: view, model: model)
        view.presenter = presenter
        return view
    }
}
