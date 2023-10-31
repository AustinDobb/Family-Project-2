//
//  DetailViewController.swift
//  FamilyProject
//
//  Created by Austin Dobberfuhl on 9/25/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var familyMember: FamilyMember?

    @IBOutlet weak var familyPick: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
loadUI()
        // Do any additional setup after loading the view.
    }
    
   func loadUI() {
       guard let familyMember else { return }
       familyPick.image = UIImage(named: familyMember.photoName)
       nameLabel.text = familyMember.name
       bioLabel.text = familyMember.bio
    }

//   
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let destination = segue.destination as? DetailViewController else { return }
//        
//        switch segue.identifier {
//        case "me":
//            destination.familyMember = me
//        case "brother3":
//            destination.familyMember = brother3
//        case "brother2":
//            destination.familyMember = brother2
//        case "brother1":
//            destination.familyMember = brother1
//        case "sister":
//            destination.familyMember = sister
//        case "dad":
//            destination.familyMember = dad
//        case "mom":
//            destination.familyMember = mom
//        default:
//            break
//        }
//    }
//    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
