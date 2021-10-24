//
//  ViewController.swift
//  xibForTableView
//
//  Created by 朱偉綸 on 2021/9/23.
//

import UIKit
import test

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath) as? testTableViewCell
        else { return UITableViewCell() }
        cell.testLb1.text = "test1"
        cell.testLb2.text = "test2"
        return cell
    }
    
    
    @IBOutlet weak var testView: Test!
    
    let shared = TestForFramework()
    override func viewDidLoad() {
        super.viewDidLoad()
        shared.test()
        testView.testTableView.dataSource = self
        testView.testTableView.delegate = self
        testView.testTableView.register(UINib(nibName: "testTableViewCell", bundle: nil), forCellReuseIdentifier: "testCell")
    }


}

