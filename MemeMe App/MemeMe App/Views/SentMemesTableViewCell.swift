//
//  SentMemesTableViewCell.swift
//  MemeMe App
//
//  Created by ToOoMa on 2018-11-19.
//  Copyright © 2018 Fatimah. All rights reserved.
//

import UIKit

class SentMemesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageViewTableCell: UIImageView!
    @IBOutlet weak var tableCellLabel: UILabel!
    
    //let imageView = UIImageView(image: UIImage)
    //imageView.autoSetDimensions(to: CGSize(width: 128.0, height: 128.0))
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
