//
//  playListTableViewCell.swift
//  TableViewMusicPlayer
//
//  Created by 蕭鈺蒖 on 2022/1/15.
//

import UIKit

class playListTableViewCell: UITableViewCell {

    @IBOutlet weak var songImageView: UIImageView!
    
    @IBOutlet weak var songTitleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    @IBOutlet weak var heartButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func pressHeartButton(_ sender: UIButton) {
        
        if heartButton.tintColor == .lightGray{
            heartButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            heartButton.tintColor = .green
        } else if heartButton.tintColor == .green{
            heartButton.setImage(UIImage(systemName: "heart"), for: .normal)
            heartButton.tintColor = .lightGray
        }
        
    }
    
    
}
