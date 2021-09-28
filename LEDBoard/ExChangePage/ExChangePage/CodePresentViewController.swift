//
//  CodePresentViewController.swift
//  ExChangePage
//
//  Created by DGSW on 2021/09/28.
//

import UIKit

protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {
    @IBOutlet weak var NameLabel: UILabel!
    var name: String?
    weak var delegate: SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.NameLabel.text = name
            self.NameLabel.sizeToFit()
        }
    }
    
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "SangAu")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
