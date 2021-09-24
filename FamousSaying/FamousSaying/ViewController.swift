//
//  ViewController.swift
//  FamousSaying
//
//  Created by DGSW on 2021/09/24.
//

// UIKit -> 사용자 인터페이스를 관리하고 이벤트를 처리하는것이 주 목적인 프레임워크
// UIKit -> MVC -> 규모가 커질때 유지보수가 힘들다.

// UIView -> 화면을 구성하는 요소의 기본 클래스
// - 데이터 변화에 따라서 view 컨텐츠를 업데이트
// - view들과 함꼐 사용자 상로작용에 응답
// - view를 리사이징하고 전체적인 인터페이스의 레이아웃 관리
// - 다른 뷰컨트롤러 들과 함께 앱을 구성

// AutoLayout -> 제약조건(Constraints)을 이용하여 뷰의 위치를 지정하는 것



//import UIKit
//
//class ViewController: UIViewController {
//    @IBOutlet weak var colorView: UIView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//
//    @IBAction func tapChangeColorButton(_ sender: Any) {
//        self.colorView.backgroundColor = UIColor.blue // 랜덤이 뭔지 무로겠어요.. ㅎㅎ
//    }
//
//}



import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
