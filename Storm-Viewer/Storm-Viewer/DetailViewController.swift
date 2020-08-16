//
//  DetailViewController.swift
//  Storm-Viewer
//
//  Created by Mayuresh Rao on 8/15/20.
//  Copyright © 2020 Mayuresh Rao. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = selectedImage {
            imageView.image = UIImage(named: image)
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = true
    }
}
