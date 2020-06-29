//
//  FirstViewController.swift
//  Galactic Guidebook
//
//  Created by Toluwa Davies on 6/29/20.
//  Copyright © 2020 Hailey Bixler. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return globalPlanets.count
    }
    
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameDescription: UILabel!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell ID")
        var item = globalPlanets[indexPath.row]
        cell?.textLabel!.text = item.name
        cell?.detailTextLabel!.text = item.description
        cell?.imageView?.image = item.image
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let mercury = Planet(name: "Mercury", description: "Mercury is a planet", image: UIImage(named: "Screen Shot")!)
        globalPlanets.append(mercury)
        TableView.dataSource = self
        TableView.delegate = self 
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
