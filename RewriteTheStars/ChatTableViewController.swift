//
//  ChatTableViewController.swift
//  LoveChat
//
//  Created by SHIH-YING PAN on 2018/11/29.
//  Copyright © 2018 SHIH-YING PAN. All rights reserved.
//

import UIKit

class ChatTableViewController: UITableViewController {

    
    let messages = [Message(text: "What if we rewrite the stars?", picImageName: "Philip"), Message(text: " No one can rewrite the stars", picImageName: "Anne"), Message(text: "Say you were made to be mine", picImageName: "Philip"), Message(text: "How can you say you'll be mine?", picImageName: "Anne"), Message(text: " Nothing could keep us apart", picImageName: "Philip"), Message(text: "Everything keeps us apart", picImageName: "Anne"), Message(text: " You'd be the one I was meant to find", picImageName: "Philip"),  Message(text: " And I'm not the one you were meant to find", picImageName: "Anne"), Message(text: "It's up to youu, and it's up to me", picImageName: "Philip"), Message(text: "It's not up to you. It's not up to me", picImageName: "Anne"), Message(text: "No one can say what we get to be", picImageName: "Philip"), Message(text: "When everyone tells us what we can be", picImageName: "Anne"), Message(text: "So why don't we rewrite the stars?", picImageName: "Philip"), Message(text: "How can we rewrite the stars?", picImageName: "Anne"), Message(text: "Maybe the world could be ours", picImageName: "Philip"), Message(text: "Say that the world can be ours", picImageName: "Anne"), Message(text: " Tonight", picImageName: "Philip"), Message(text: " Tonight", picImageName: "Anne")]
    
    
    
    
    override func viewDidLoad() {
        //transpaparent background
        super.viewDidLoad()
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "bg"))
        self.tableView.backgroundView?.alpha = 0.5
      
        //dynamic row height
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = UITableView.automaticDimension
    
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

   
// count row of number
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return messages.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let message = messages[indexPath.row]
        let cell: MessageTableViewCell
        if message.picImageName == "Philip"{
            cell = tableView.dequeueReusableCell(withIdentifier: "philipCell", for: indexPath) as! MessageTableViewCell

        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: "anneCell", for: indexPath) as! MessageTableViewCell

        }
        cell.messageLabel?.text = message.text
        return cell


        // Configure the cell...

    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
