//
//  HomeController.swift
//  AutoLayoutDemo
//
//  Created by Ацамаз Бицоев on 18.03.2022.
//

import UIKit

class HomeController: UIViewController {
    var homeView: HomeView?
    
    
    override func loadView() {
        super.loadView()
        homeView = HomeView(controller: self)
        view = homeView
    }
}
