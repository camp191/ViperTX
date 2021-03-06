//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.
//

import UIKit
import CommonUI

protocol ___VARIABLE_sceneName___ViewInput: AnyObject {}

protocol ___VARIABLE_sceneName___ViewOutput {
    func viewIsReady()
}

protocol ___VARIABLE_sceneName___RouterInput {}

protocol ___VARIABLE_sceneName___ViewInteractorInput {}

protocol ___VARIABLE_sceneName___ViewInteractorOutput: AnyObject {}

enum ___VARIABLE_sceneName___CellData {
    // Place your cell data cases and update the cell type variable below.
    var cellType: UITableViewCell.Type {
        return UITableViewCell.self
    }
}

protocol ___VARIABLE_sceneName___TableViewPresenter {
    func initTableView(_ tableView: BditTableView)
    
    func numberOfSection(in tableView: UITableView) -> Int
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> ___VARIABLE_sceneName___CellData
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
}

protocol ___VARIABLE_sceneName___CellDelegate {
    func configure(data: ___VARIABLE_sceneName___CellData, viewPresenter: ___VARIABLE_sceneName___ViewOutput)
}

protocol ___VARIABLE_sceneName___DataFactory {}
