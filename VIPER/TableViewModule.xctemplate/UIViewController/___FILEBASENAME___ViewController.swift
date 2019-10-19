//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.
//

import UIKit
import CommonUI

final class ___VARIABLE_sceneName___ViewController: UIViewController, NibLoader {
    typealias NibRootType = ___VARIABLE_sceneName___ViewController
    
    #error("Don't forget to bind this IBOutlet to Nib")
    @IBOutlet weak var tableView: BditTableView!

    var output: ___VARIABLE_sceneName___ViewOutput!
    var tableViewPresenter: ___VARIABLE_sceneName___TableViewPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
        tableViewPresenter?.initTableView(tableView)
        tableView.showLoadingMoreIndicator = true
        
        output.viewIsReady()
        tableView.bditTableViewDataSource = self
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func setupNavigation() {}
}

extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___ViewInput {}

extension ___VARIABLE_sceneName___ViewController: BditTableViewDataSource {
    public func pulledToRefresh() {}
}

extension ___VARIABLE_sceneName___ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewPresenter.tableView(tableView, numberOfRowsInSection: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellData = tableViewPresenter.tableView(tableView, cellForRowAt: indexPath)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: cellData.cellType), for: indexPath)

        if let cell = cell as? ___VARIABLE_sceneName___CellDelegate {
            cell.configure(data: cellData, viewPresenter: output)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableViewPresenter.tableView(tableView, didSelectRowAt: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        tableViewPresenter.tableView(tableView, willDisplay: cell, forRowAt: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
