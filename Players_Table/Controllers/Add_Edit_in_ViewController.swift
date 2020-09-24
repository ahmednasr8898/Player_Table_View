//
//  Add_Edit_in_ViewController.swift
//  Players_Table
//
//  Created by Ahmed Nasr on 9/15/20.
//  Copyright © 2020 Ahmed Nasr. All rights reserved.
//

import UIKit

class Add_Edit_in_ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var PlayTable2: UITableView!
    
    @IBOutlet weak var NameTxtField: UITextField!
    var arrRows = ["Marc-André ter Stegen" , "Nélson Semedo" , "Gerard Piqué" , "Clément Lenglet" , "Jordi Alba" , "Serei Roberto" , "Sergio Busquets" , "Frenkie de Jong" , "Philippe Coutinho" , "Lionel Messi" , "Luis Suárez" , "Antoine Griezmann" , "Ousmane Dembélé"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PlayTable2.delegate = self
        PlayTable2.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrRows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "playersCell2", for: indexPath)
        cell.textLabel?.text = arrRows[indexPath.row]
        return cell        
    }
    
    @IBAction func btnAdd(_ sender: Any) {
    
        if let nameTxt = NameTxtField.text {
            
            arrRows.append(nameTxt)
            PlayTable2.beginUpdates()
            let position = IndexPath(row: arrRows.count - 1, section: 0)
            PlayTable2.insertRows(at: [position], with: .automatic)
            PlayTable2.endUpdates()
            NameTxtField.text = ""
        }
    }
    
    
    @IBAction func btnEdit(_ sender: Any) {
        
        PlayTable2.isEditing = !PlayTable2.isEditing
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        arrRows.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deletePlayer = UIContextualAction(style: .destructive, title: ""){(_,_,comp) in
            
            self.arrRows.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
            
            comp(true)
            
        }
        
        deletePlayer.image = UIImage(systemName: "trash")
        
        return UISwipeActionsConfiguration(actions: [deletePlayer])
    }
}
