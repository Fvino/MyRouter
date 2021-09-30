//
//  LaunchRouter.swift
//  MyRouter
//
//  Created by Valeriy Fomin on 30/9/21.
//

import Foundation

class LaunchRouter: BaseRouter {
    func toSecond() {
        perform(segue: "onSecond")
    }

    func toThird() {
        perform(segue: "onThird")
    }
}
