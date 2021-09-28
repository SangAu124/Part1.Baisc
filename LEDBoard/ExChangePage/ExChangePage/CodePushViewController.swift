//
//  CodePushViewController.swift
//  ExChangePage
//
//  Created by DGSW on 2021/09/28.
//

import UIKit

class CodePushViewController: UIViewController {
    @IBOutlet weak var NameLabel: UILabel!
    var name: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let name = name{
            self.NameLabel.text = name
            self.NameLabel.sizeToFit()
        }
        // Do any additional setup after loading the view.
    }
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
