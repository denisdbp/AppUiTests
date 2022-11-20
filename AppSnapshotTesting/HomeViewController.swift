//
//  HomeViewController.swift
//  AppSnapshotTesting
//
//  Created by Admin on 20/11/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    let homeView:HomeView = HomeView()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        self.view = self.homeView
    }
}
