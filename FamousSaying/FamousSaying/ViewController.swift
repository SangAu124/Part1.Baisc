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
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let quotes = [
        Quote(contents: "죽음을 두려워 하는 나머지 삶을 시작조차 하지 못하는 사람이 많다", name: "벤다이크"),
        Quote(contents: "나는 나 자신을 빼 놓고는 모두 안다.", name: "비용"),
        Quote(contents: "편견이란 실효성 없는 의견이다.", name: "암브로스 빌"),
        Quote(contents: "분노는 바보들의 가슴속에서만 살아간다.", name: "아인슈타인"),
        Quote(contents: "", name: "니체")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5)) //  0 ~ 4까지의 난수를 랜덤으로 생성
        let quote = quotes[random]
        
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}


    
