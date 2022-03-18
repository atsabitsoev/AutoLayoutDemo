//
//  SceneDelegate.swift
//  AutoLayoutDemo
//
//  Created by Ацамаз Бицоев on 18.03.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        window?.rootViewController = HomeController()
        window?.makeKeyAndVisible()
    }
}
