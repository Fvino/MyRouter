//
//  BaseRouter.swift
//  MyRouter
//
//  Created by Valeriy Fomin on 30/9/21.
//

import UIKit

class BaseRouter: NSObject {
    var controller: UIViewController!

    func injectController(controller: UIViewController) {
        self.controller = controller
    }

    func perform<Controller: UIViewController> (segue: String, performAction: ((Controller) -> Void)? = nil) {
        let performAction = performAction.map { action in
            {(controller: UIViewController) in
                guard let controller = controller as? Controller else {
                    assertionFailure("Ожидался \(Controller.self)")
                    return
                }
                action(controller)

            }
        }
        controller.performSegue(withIdentifier: segue, sender: performAction)
    }
}
