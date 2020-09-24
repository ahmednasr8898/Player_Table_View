//
//  ViewController.swift
//  Players_Table
//
//  Created by Ahmed Nasr on 9/15/20.
//  Copyright © 2020 Ahmed Nasr. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var playersTable: UITableView!
    @IBOutlet weak var NameTxtField: UITextField!
    
    var arrSections = ["Goalkeepers" , "Defenders" , "Midfielders" , "Forwards"]
    
    var arrRows = [["Marc-André ter Stegen"]  , ["Nélson Semedo" , "Gerard Piqué" , "Clément Lenglet" , "Jordi Alba" , "Sergi Roberto"] , ["Sergio Busquets" , "Frenkie de Jong" , "Philippe Coutinho"] , ["Lionel Messi" , "Luis Suárez" , "Antoine Griezmann" , "Ousmane Dembélé"]]
     
    override func viewDidLoad() {
        super.viewDidLoad()
    
        playersTable.delegate = self
        playersTable.dataSource = self
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrSections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrRows[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayersCell", for: indexPath)
        cell.textLabel?.text = arrRows[indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrSections[section]
    }

}
