//
//  playListTableViewController.swift
//  TableViewMusicPlayer
//
//  Created by 蕭鈺蒖 on 2022/1/15.
//

import UIKit

class playListTableViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 90
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return playList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return playList[section].songList.count
    }
    
    
    // set the title for each section (singer Name)
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return playList[section].singerName
    }
    
    //set the header for each section
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let headerView = view as! UITableViewHeaderFooterView
        headerView.contentView.backgroundColor = .black
        headerView.textLabel?.textColor = .white
        headerView.textLabel?.font = .systemFont(ofSize: 26, weight: .bold)
        headerView.textLabel?.sizeToFit()
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }

    struct propertyKey {
        static let songCell = "songCell"
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: propertyKey.songCell, for: indexPath) as? playListTableViewCell else {return UITableViewCell()}

        let song = playList[indexPath.section].songList[indexPath.row]
        cell.singerLabel.text = song.singerName
        cell.songTitleLabel.text = song.songTitle
        cell.songImageView.image = UIImage(named: song.imageName)
        
        if song.like == true {
            cell.heartButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            cell.heartButton.tintColor = .green
        }else {
            cell.heartButton.setImage(UIImage(systemName: "heart"), for: .normal)
            cell.heartButton.tintColor = .lightGray
        }
        
        return cell
    }


    @IBSegueAction func showWebSite(_ coder: NSCoder) -> playListWebViewController? {
        guard let section = tableView.indexPathForSelectedRow?.section else {return nil}
        guard let row = tableView.indexPathForSelectedRow?.row else {return nil}
        let song = playList[section].songList[row]
        return playListWebViewController(coder: coder, song: song)
    }
    
    
    @IBAction func heartButtonChange(_ sender: UIButton) {
        let point = sender.convert(CGPoint.zero, to: tableView)
        if let indexPath = tableView.indexPathForRow(at: point){
            if sender.imageView?.image == UIImage(systemName: "heart"){
                playList[indexPath.section].songList[indexPath.row].like = true
                sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
                sender.tintColor = .green
            } else if sender.imageView?.image == UIImage(systemName: "heart.fill"){
                playList[indexPath.section].songList[indexPath.row].like = false
                
                sender.setImage(UIImage(systemName: "heart"), for: .normal)
                sender.tintColor = .lightGray
            }
            
        }
        
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
