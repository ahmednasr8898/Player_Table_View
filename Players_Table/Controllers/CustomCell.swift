//
//  CustomCell.swift
//  Players_Table
//
//  Created by Ahmed Nasr on 9/15/20.
//  Copyright © 2020 Ahmed Nasr. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    
    @IBOutlet weak var imagePlayer: UIImageView!
    
    @IBOutlet weak var NamePlayer: UILabel!
    
    @IBOutlet weak var NumberPlayer: UILabel!
    
    @IBOutlet weak var NationalityPlayer: UILabel!
    
    @IBOutlet weak var PositionPlayer: UILabel!
    
    @IBOutlet weak var descriptionPlayer: UILabel!
    
    @IBOutlet weak var SalaryPlayer: UILabel!
    
    
    func setUpDataOfPlayer(photo: UIImage , Name: String , number: Int , Nationality: String , position: String , description: String , salary: Double){
        
        imagePlayer.image = photo
        NamePlayer.text = Name
        NumberPlayer.text = "\(number)"
        NationalityPlayer.text = Nationality
        PositionPlayer.text = position
        SalaryPlayer.text = "\(salary) $"
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
