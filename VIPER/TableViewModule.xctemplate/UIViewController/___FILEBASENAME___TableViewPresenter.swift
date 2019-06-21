//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.
//

import UIKit
import CommonUI

extension ___VARIABLE_sceneName___ViewPresenter: ___VARIABLE_sceneName___TableViewPresenter {
    func initTableView(_ tableView: BditTableView) {
        let cells: [String] = []
        
        cells.forEach { (cellName) in
            tableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        }
    }
    
    func numberOfSection(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> ___VARIABLE_sceneName___CellData {
        return ___VARIABLE_sceneName___CellData(cellType: UITableViewCell.self)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {}
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {}
}
