//
//  ViewController.swift
//  SpaceX
//
//  Created by Ming Zhang on 29/6/22.
//

import UIKit

final class MainViewController: UIViewController {

    @IBOutlet weak var mainTableView: UITableView!
    
    private lazy var dataSource: DataSource = .init(data: [])
    
    private var resultFuture = Future<[LaunchDTO]>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource.register(tableView: mainTableView)
        
        
        loadData()
    }
    
    private func loadData() {
        resultFuture.onSuccess { [weak self] (launches) in
            DispatchQueue.main.async {
                print(launches)
                self?.dataSource.fill(data: launches)
            }
        }
        

        let launchesFuture = SpaceXService.fetchLaunches()
        launchesFuture.on { [weak self] launches in
            let validLaunches = launches.compactMap(LaunchDTO.init)
            
            self?.resultFuture.resolve(with: validLaunches)
        } failure: { error in
        }
    }
}

private class DataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
     
    private var data: [LaunchDTO] = []
    
    private weak var tableView: UITableView?
    
    init(data: [LaunchDTO] = []) {
       self.data = data
    }
    
    func register(tableView: UITableView) {
        self.tableView = tableView
        self.tableView?.dataSource = self
        self.tableView?.delegate = self
        self.register(cell: UITableViewCell.self, on: tableView)
    }
    
    func register(cell: UITableViewCell.Type, on tableView: UITableView) {
        tableView.register(cell, forCellReuseIdentifier: "LaunchCell")
    }
    
    func fill(data: [LaunchDTO]) {
        self.data = data
        tableView?.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LaunchCell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row].missionName
        cell.detailTextLabel?.text = data[indexPath.row].rocket.name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
}
