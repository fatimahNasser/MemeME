//
//  SentMemesTableViewController.swift
//  MemeMe App
//
//  Created by ToOoMa on 2018-11-19.
//  Copyright © 2018 Fatimah. All rights reserved.
//

import UIKit

class SentMemesTableViewController: UITableViewController, UIViewControllerTransitioningDelegate {

    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SentMemesTableViewCell", for: indexPath) as! SentMemesTableViewCell
        cell.imageViewTableCell.image = memes?[indexPath.row].memedImage
        cell.tableCellLabel.text = "\(memes[indexPath.row].topTextField)...\(memes[indexPath.row].bottomTextField)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let memeDetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        memeDetailViewController.memedImage = self.memes [indexPath.row]
        self.navigationController!.pushViewController(memeDetailViewController, animated: true)
    }
}
