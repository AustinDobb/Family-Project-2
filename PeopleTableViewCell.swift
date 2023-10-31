//
//  PeopleTableViewCell.swift
//  FamilyProject
//
//  Created by Austin Dobberfuhl on 10/30/23.
//

import UIKit

class PeopleTableViewCell: UITableViewCell {

    
    @IBOutlet weak var peopleCellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func update(with people: FamilyMember) {
        peopleCellLabel.text = people.name
    }
    
    
}
