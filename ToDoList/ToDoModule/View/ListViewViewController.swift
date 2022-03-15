//
//  ListViewViewController.swift
//  ToDoList
//
//  Created tambanco 🥳 on 15.03.2022.
//
//  Template generated by Tambanco
//

import UIKit

class ListViewViewController: UIViewController {

	var presenter: ListViewPresenterProtocol!
    var listTableView: UITableView!
    var listView: ListView!
    var taskList: Task!
    
	override func viewDidLoad() {
        super.viewDidLoad()
        
        initListView()
        initTableView()
    }
    
    func initListView() {
        listView = ListView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        view.addSubview(listView)
        listView.addTaskButton.addTarget(self, action: #selector(addTaskAction), for: .touchUpInside)
    }
    
    func initTableView() {
        listTableView = UITableView()
        listTableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.reuseId)
        listTableView.dataSource = self
        listTableView.delegate = self
        
        self.view.addSubview(listTableView)
        listTableView.translatesAutoresizingMaskIntoConstraints = false
        listTableView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        listTableView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        listTableView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1).isActive = true
        listTableView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
    }
    
    @objc func addTaskAction() {
        
        var taskTextField = UITextField()
        let alert = UIAlertController(title: "Добавьте задачу", message: "", preferredStyle: .alert)
        alert.addTextField { alertTextField in
            taskTextField = alertTextField
        }
        
        let action = UIAlertAction(title: "Добавить", style: .default) { action in
            self.presenter.updateTasks(newTask: taskTextField.text ?? "")
            }
        alert.addAction(action)
        alert.addAction(UIAlertAction(title: "Отмена", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

// MARK: - Binding
extension ListViewViewController: ListViewViewProtocol {
    func setList(taskList: [String]) {
        var taskList =
    }
}

// MARK: - TableView
extension ListViewViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseId, for: indexPath) as! TableViewCell
        cell.taskLabel.text = "task"
        return cell
    }
}
