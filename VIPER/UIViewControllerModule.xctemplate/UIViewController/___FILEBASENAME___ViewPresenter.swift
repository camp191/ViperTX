//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.
//

import UIKit

final class ___VARIABLE_sceneName___ViewPresenter: ___VARIABLE_sceneName___ViewOutput {
    weak var view: ___VARIABLE_sceneName___ViewInput?
    var router: ___VARIABLE_sceneName___RouterInput
    var interactor: ___VARIABLE_sceneName___ViewInteractorInput
    
    init(
        interactor: ___VARIABLE_sceneName___ViewInteractorInput,
        router: ___VARIABLE_sceneName___RouterInput) {
        self.interactor = interactor
        self.router = router
    }
    
    func viewIsReady() {}
}

extension ___VARIABLE_sceneName___ViewPresenter: ___VARIABLE_sceneName___ViewInteractorOutput {}

