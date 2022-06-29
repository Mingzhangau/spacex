//
//  DetailsViewController.swift
//  SpaceX
//
//  Created by Ming Zhang on 29/6/22.
//

import UIKit

final class DetailsViewController: UIViewController {
    
    var rocketID: String!

    private var future: Future<Rocket2DTO> = .init()
    
    @IBOutlet weak var wikiButton: UIButton!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    @IBAction func didTapWikiButton(_ sender: Any) {
        guard let wikiString = wikiLink,
              let url = URL(string: wikiString) else { return }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    private var wikiLink: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBinding()
        loadData()
    }
    
    private func loadData() {
        guard let rocketID = rocketID else {
            return
        }
        
        SpaceXService
            .fetchRocket(by: rocketID)
            .map(Rocket2DTO.init)
            .on(success: { [weak self] rocket in
                guard let rocket = rocket else {
                    return
                }
                self?.future.resolve(with: rocket)
            },
            failure: { [weak self] error in
                self?.future.reject(with: error)
            })
    }
    
    private func setupBinding() {
        future.onSuccess {  [weak self] rocket in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.updateUI(rocket: rocket)
            }
        }
    }
    
    private func updateUI(rocket: Rocket2DTO) {
        self.label1.text = rocket.name
        self.label2.text = "\(rocket.diameter)"
        self.label3.text = "\(rocket.launchCost)"
        self.wikiLink = rocket.wiki
    }
}
