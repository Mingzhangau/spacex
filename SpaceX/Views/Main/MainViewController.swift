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
        dataSource.addSelectAction { [weak self] (rocketId) in
            self?.performSegue(withIdentifier: "showDetails", sender: rocketId)
        }
        loadData()
    }
    
    private func loadData() {
        resultFuture.onSuccess { [weak self] (launches) in
            DispatchQueue.main.async {
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showDetails" else { return }
        let targetViewController = (segue.destination as? DetailsViewController)
        targetViewController?.rocketID = (sender as! String)
    }
}

private class DataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
     
    private var data: [LaunchDTO] = []
    
    private weak var tableView: UITableView?
    
    private var action: ((String) -> Void)?
    
    init(data: [LaunchDTO] = []) {
       self.data = data
    }
    
    func addSelectAction(action: @escaping (String) -> Void) {
        self.action = action
    }
    
    func register(tableView: UITableView) {
        self.tableView = tableView
        self.tableView?.dataSource = self
        self.tableView?.delegate = self
    }
    
    func register(cell: UITableViewCell.Type, on tableView: UITableView) {
        tableView.register(cell, forCellReuseIdentifier: "LaunchCell")
    }
    
    func fill(data: [LaunchDTO]) {
        self.data = data
        tableView?.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "LaunchCell", for: indexPath) as? LaunchCell else {
            fatalError()
        }
        
        cell.config(with: data[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let launch = data[indexPath.row]
        action?(launch.rocket.id)
    }
}

final class LaunchCell: UITableViewCell {
    
    @IBOutlet var mainLabel: UILabel! {
        didSet {
            mainLabel.font = UIFont.boldSystemFont(ofSize: 16)
        }
    }
    
    @IBOutlet var accessoryLabel: UILabel! {
        didSet {
            accessoryLabel.font = UIFont.preferredFont(forTextStyle: .callout)
        }
    }
    
    func config(with launch: LaunchDTO) {
        mainLabel.text = launch.missionName
        accessoryLabel.text = launch.rocket.name
    }
}
