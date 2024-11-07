//
//  ViewController.swift
//  ShopApp
//
//  Created by user on 06.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    //MARK: - Private Property
    private let shopManager = ShopManager()
    private var arrayCells:[Section] = []
    private let tableView = UITableView()
    private let cellIdentifier = "cell"
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
        arrayCells = shopManager.getShopItems()
    }
}

//MARK: - Methods
extension ViewController {
    
    func setupView() {
        view.backgroundColor = .white
        view.addSubview(tableView)
        setupTableView()
    }
    
    func setupTableView() {
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }
}



//MARK: - Layout
extension ViewController {
    func setupLayout() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}


//MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        arrayCells.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayCells[section].productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        var configuration = cell.defaultContentConfiguration()
        
        let product = arrayCells[indexPath.section].productList[indexPath.row]
        configuration.text = product
        
        cell.contentConfiguration = configuration
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrayCells[section].type.rawValue
        
    }
    
}
