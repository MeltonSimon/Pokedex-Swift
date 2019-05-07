//
//  PokemonListViewController.swift
//  Pok3mon
//
//  Created by Melton Distor on 23/04/2019.
//  Copyright © 2019 Melton Distor. All rights reserved.
//

import UIKit

class PokemonListViewController: UIViewController {
    
    lazy var refresher: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.tintColor = .white
        refreshControl.addTarget(self, action:
            #selector(requestData), for: .valueChanged)
        
        return refreshControl
    }()

    @IBOutlet weak var tableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        tableView.refreshControl = UIRefreshControl()
        
        tableView.register(UINib(nibName: "PokemonTableViewCell", bundle: nil), forCellReuseIdentifier: "PokemonTableViewCell")
        
        
    }
    
    @objc
    func requestData() {
        print("requesting Data")
        refresher.endRefreshing()
    }
   
}


extension PokemonListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonTableViewCell", for: indexPath) as? PokemonTableViewCell else {
            return UITableViewCell()
        }
        cell.configureCell(text:"")
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected: \(indexPath.row)")
        self.performSegue(withIdentifier: "PokemonDetailsViewControllerSegue", sender: self)
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension 
    }
}
