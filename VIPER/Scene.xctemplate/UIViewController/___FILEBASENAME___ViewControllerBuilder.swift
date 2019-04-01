//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___ViewControllerBuildable {
    func build() -> UIViewController
}

final class ___VARIABLE_sceneName___ViewControllerBuilder: ___VARIABLE_sceneName___ViewControllerBuildable {
    func build() -> UIViewController {
        guard let viewController = try? ___VARIABLE_sceneName___ViewController.loadFromNib() else {
            fatalError("Could not load nib")
        }
        
        let presenter = ___VARIABLE_sceneName___ViewPresenter()
        let router = ___VARIABLE_sceneName___ViewRouter()
        let interactor = ___VARIABLE_sceneName___ViewInteractor()
        
        viewController.output = presenter
        
        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        
        router.viewController = viewController
        
        interactor.output = presenter
        
        return viewController
    }
}
