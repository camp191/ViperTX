//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.
//

import UIKit

final class ___VARIABLE_sceneName___ViewController: UIViewController, NibLoader {
    typealias NibRootType = ___VARIABLE_sceneName___ViewController

    var output: ___VARIABLE_sceneName___ViewOutput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewIsReady()
    }
}

extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___ViewInput {}
