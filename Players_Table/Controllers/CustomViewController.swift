//
//  CustomViewController.swift
//  Players_Table
//
//  Created by Ahmed Nasr on 9/15/20.
//  Copyright © 2020 Ahmed Nasr. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var customTable: UITableView!
    
    var arrPlayers = [playerFC]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        customTable.delegate = self
        customTable.dataSource = self
        
        
        arrPlayers.append(playerFC.init(nameFC: "Lionel Messi", numberFC: 10, poFC: "Forwards", nationalityFC: "Argantina", descriptionFC: "Captin Of Team", salaryFC: 100100781, imageFC: UIImage(named: "Messi")!))
        
     
        arrPlayers.append(playerFC.init(nameFC: "Marc-André ter Stegen", numberFC: 1, poFC: "Goalkeepers", nationalityFC: "Germany", descriptionFC: "Very Very Good", salaryFC: 781, imageFC: UIImage(named: "ter-Stegen")!))
        
        
        arrPlayers.append(playerFC.init(nameFC: "Nélson Semedo" , numberFC: 2, poFC: "Defenders", nationalityFC: "Portogal", descriptionFC: "Good wenger", salaryFC: 76381, imageFC: UIImage(named: "Wague")!))
        
        arrPlayers.append(playerFC.init(nameFC: "Gerard Piqué", numberFC: 4, poFC: "Defenders", nationalityFC: "Espanish", descriptionFC: "Faster wenger", salaryFC: 782321, imageFC: UIImage(named: "Pique")!))
        
        arrPlayers.append(playerFC.init(nameFC: "Jordi Alba", numberFC: 18, poFC: "Defenders", nationalityFC: "sdclks", descriptionFC: "sdkclskd", salaryFC: 12781, imageFC: UIImage(named: "Alba")!))
        
        arrPlayers.append(playerFC.init(nameFC: "Luis Suárez", numberFC: 9, poFC: "Forwards", nationalityFC: "Uraguay", descriptionFC: "Header", salaryFC: 75432381, imageFC: UIImage(named: "Suarez")!))
        
        arrPlayers.append(playerFC.init(nameFC: "Antoine Griezmann", numberFC: 7, poFC: "Forwards", nationalityFC: "French", descriptionFC: "Easy Take Ball", salaryFC: 784321, imageFC: UIImage(named: "Griezmann")!))
        
        
        arrPlayers.append(playerFC.init(nameFC: "Ousmane Dembélé", numberFC: 11, poFC: "Forwards", nationalityFC: "French", descriptionFC: "faster player", salaryFC: 7846741, imageFC: UIImage(named: "Dembele")!))
        
        
        arrPlayers.append(playerFC.init(nameFC: "Philippe Coutinho", numberFC: 14, poFC: "Midfielders" , nationalityFC: "Barazil", descriptionFC: "Very Good", salaryFC: 23451, imageFC: UIImage(named: "Dembele")!))
        
        
        arrPlayers.append(playerFC.init(nameFC: "Clément Lenglet", numberFC: 3, poFC: "Defenders", nationalityFC: "French", descriptionFC: "Good defince", salaryFC: 12381, imageFC: UIImage(named: "Lenglet")!))
        
        
        arrPlayers.append(playerFC.init(nameFC: "Frenkie de Jong", numberFC: 21, poFC: "Midfielders", nationalityFC: "Neithlanda", descriptionFC: "Good handel on boll", salaryFC: 78981, imageFC: UIImage(named: "De-Jong")!))
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPlayers.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        
        let data = arrPlayers[indexPath.row]
        
        cell.setUpDataOfPlayer(photo: data.imageFC, Name: data.nameFC, number: data.numberFC, Nationality: data.nationalityFC, position: data.poFC, description: data.descriptionFC, salary: data.salaryFC)
        
        return cell
        
    }
   

}

struct playerFC {
    
    let nameFC : String
    let numberFC : Int
    let poFC : String
    let nationalityFC : String
    let descriptionFC : String
    let salaryFC : Double
    let imageFC : UIImage
}
