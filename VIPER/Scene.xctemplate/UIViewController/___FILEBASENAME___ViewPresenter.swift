//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class ___VARIABLE_sceneName___ViewPresenter: ___VARIABLE_sceneName___ViewOutput {
    weak var view: ___VARIABLE_sceneName___ViewInput?
    var router: ___VARIABLE_sceneName___RouterInput?
    var interactor: ___VARIABLE_sceneName___ViewInteractorInput?
    
    func viewIsReady() {}
}

extension ___VARIABLE_sceneName___ViewPresenter: ___VARIABLE_sceneName___ViewInteractorOutput {}

