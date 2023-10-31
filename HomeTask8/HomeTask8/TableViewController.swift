//
//  TableViewController.swift
//  HomeTask8
//
//  Created by Darya on 30.10.23.
//

import UIKit

class Table: UITableViewController {
        let logo = {
        let logo = UITextField()
        logo.text = "PALERMONON"
        return logo
    }()
    
    let buttonStartShift = {
        let buttonStartShift = UIButton(type: .system)
        buttonStartShift.setTitle("Начать смену", for: .normal)
        return buttonStartShift
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(logo)
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.widthAnchor.constraint(equalToConstant:360).isActive = true
        logo.heightAnchor.constraint(equalToConstant: 128).isActive = true
        logo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(buttonStartShift)
        buttonStartShift.backgroundColor = .gray
        buttonStartShift.tintColor = .black
        buttonStartShift.layer.cornerRadius = 12
        buttonStartShift.translatesAutoresizingMaskIntoConstraints = false
        buttonStartShift.widthAnchor.constraint(equalToConstant: 180).isActive = true
        buttonStartShift.heightAnchor.constraint(equalToConstant: 100).isActive = true
        buttonStartShift.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonStartShift.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        buttonStartShift.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
       let tableViewController = ViewController()
        present(tableViewController, animated: true)
    
    }
    



    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
