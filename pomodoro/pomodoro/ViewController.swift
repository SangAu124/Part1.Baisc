//
//  ViewController.swift
//  pomodoro
//
//  Created by DGSW on 2021/11/25.
//

import UIKit

enum TimerStatus {
    case start
    case pause
    case end
}

class ViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var toggleButton: UIButton!
    
    var duration = 60
    var timerStatus: TimerStatus = .end
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tabCancelButton(_ sender: UIButton) {
    }
    @IBAction func tabToggleButton(_ sender: UIButton) {
        self.duration = Int(self.datePicker.countDownDuration) // countDownDuration = 입력받은 시간을 초로 표현 해준다.
        
        switch self.timerStatus{
        case .end:
            self.timerStatus = .start
            
        default:
        }
    }
}

