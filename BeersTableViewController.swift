//
//  BeersTableViewController.swift
//  PUNKBeers
//
//  Created by Cristiana  Passos on 15/07/17.
//  Copyright © 2017 Cristiana. All rights reserved.
//

import UIKit

class BeersTableViewController: UITableViewController {

    var dataSource: [Beer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadBeers()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier! == "details" {
            let vc = segue.destination as! ViewController
            vc.beer = dataSource[tableView.indexPathForSelectedRow!.row]
        }
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let beer = dataSource[indexPath.row]
        cell.textLabel?.text = beer.name
        cell.detailTextLabel?.text = "Teor alcoólico: \(beer.abv)"
        //cell.imageView?.image = beer.image as? UIImage
        
        return cell
    }
    
    func loadBeers(){
        Rest.loadBeer{ (beers: [Beer]?) in
            if let beers = beers {
                self.dataSource = beers
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }

}
