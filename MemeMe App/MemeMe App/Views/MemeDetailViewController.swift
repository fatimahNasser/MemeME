//
//  MemeDetailViewController.swift
//  MemeMe App
//
//  Created by ToOoMa on 2018-12-08.
//  Copyright © 2018 Fatimah. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    
    var memedImage : Meme!
    
    @IBOutlet weak var MemeDetailView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        MemeDetailView.image = memedImage.memedImage
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    


}
