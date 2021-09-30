//
//  ViewController.swift
//  MyRouter
//
//  Created by Valeriy Fomin on 30/9/21.
//

import UIKit

class FirstViewController: UIViewController {


    @IBOutlet var router: LaunchRouter!

    override func viewDidLoad() {
        super.viewDidLoad()
        router.injectController(controller: self)

    }

    @IBAction func secondButtonTap(_ sender: UIButton) {
        router.toSecond()
    }
    @IBAction func thirdButtonTap(_ sender: UIButton) {
        router.toThird()
    }

}

