//
//  FamilyTableViewController.swift
//  FamilyProject
//
//  Created by Austin Dobberfuhl on 10/30/23.
//

import UIKit

class FamilyTableViewController: UITableViewController {

    var familyMembers: [FamilyMember] = [me, sister, brother1, brother2, brother3, mom, dad]
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
    
    // MARK: - Table view data source

  

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return familyMembers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "People", for: indexPath) as! PeopleTableViewCell

        let familyMembers = familyMembers[indexPath.row]
        
        cell.update(with: familyMembers)
        cell.showsReorderControl = true
//        var content = cell.defaultContentConfiguration()
//        content.text = familyMember.name
//        cell.contentConfiguration = content

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailViewController else { return }
        guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) else { return }
        let selectedFamilyMember = familyMembers[indexPath.row] 
        
        destination.familyMember = selectedFamilyMember
    }

}
