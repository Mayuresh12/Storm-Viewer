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
    var totalNumberOfImages: Int?
    var currentImageIndex: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = selectedImage {
            imageView.image = UIImage(named: image)
        }
        if let total = totalNumberOfImages, let current = currentImageIndex {
        title = "(\(current)/\(total))"
        }
        navigationItem.largeTitleDisplayMode =
            .never
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.hidesBarsOnTap = false
    }
}
