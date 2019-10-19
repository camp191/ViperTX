//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.
//

import UIKit
import CommonUI

final class ___VARIABLE_sceneName___ViewPresenter: ___VARIABLE_sceneName___ViewOutput {
    weak var view: ___VARIABLE_sceneName___ViewInput?
    private let router: ___VARIABLE_sceneName___RouterInput
    private let interactor: ___VARIABLE_sceneName___ViewInteractorInput
    
    init(
        interactor: ___VARIABLE_sceneName___ViewInteractorInput,
        router: ___VARIABLE_sceneName___RouterInput) {
        self.interactor = interactor
        self.router = router
    }
    
    func viewIsReady() {}
}

extension ___VARIABLE_sceneName___ViewPresenter: ___VARIABLE_sceneName___ViewInteractorOutput {}

extension ___VARIABLE_sceneName___ViewPresenter: ___VARIABLE_sceneName___TableViewPresenter {
    func initTableView(_ tableView: BditTableView) {
        let cells: [UITableViewCell.Type] = []
        
        tableView.registerCellTypes(cellTypes: cells)
    }
    
    func numberOfSection(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> ___VARIABLE_sceneName___CellData {
        #error("Don't forget to return cell data")
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {}
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {}
}
