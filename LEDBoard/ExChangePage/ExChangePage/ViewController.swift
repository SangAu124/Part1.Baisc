
// Content View Controller
// - 화면을 구성하는 뷰를 직접 구현하고 관련된 니벤트를 처리하는 뷰 컨트롤러

// Container View Controller
// - 하나 이상의 Child View Controller를 가지고 있다.
// - 하나 이상의 Child View Controller를 관리하고 레이아웃과 화면 전환을 담당한다.
// - 화면 구성과 이벤트 관리는 Child View Controller에서 한다.
// - Container View Controller는 대표적으로 Navigation Controller와 TabBar Controller가 있다.


// UINavigationController -> 계층구조로 구성된 content를 순차적으로 보여주는 cnoantainer view controller


// 화면 전환 방법
// 1. 소스코드를 통해 전환하는 방식
// 2. StoryBoard를 통해 전환하는 방식

// View Controller에서 다른 ViewController를 호출하여 전환하기(프레젠테이션 방식)
/*
func present(_ UIViewControllerPresent: UIViewController,
    animated flag: Bool
    completion: (() -> Void)? = nil)
 
func dismiss(animated flag: Bool,
    completion: (() -> Void)? = nil))
 */

// NavigationController를 사용하여 화면 전환하기
/*
func pushViewController(_ viewController: UIViewController,
    animated: Bool)
 
func popViewController(animated: Bool) -> UIViewController?
 */

// 세그웨이(Segueway)를 사용하여 화면 전환하기
//ActionSegueway -> 출발점이 Button등인 것
/// Show
/// Show Detail -> 아이폰은 Show와 똑같지만 아이패드는 스플릿화면으로 된다.
/// Present Modally
/// Present As Popover -> 아이패드
/// Custom

//Manual Segueway -> 출발점이 ViewController 자체인 것

//ViewControllerLifeCycle

// viewDidLoad()
// - 뷰컨트롤러의 모든 뷰들이 메모리에 로드됐을 때 호출
// - 메모리에 처음 로드될 때 한 번만 호출
// - 보통 딱 한번 호출될 행위들을 이 메소드 안에 정의함
// - 뷰와 관련된 추가적인 초기화 작업, 네트워크 호출

// viewWillAppear()
// - 뷰가 뷰계층에 추가되고, 화면에 보이기 직전에 매 번 호출
// - 다른 뷰로 이동했다가 돌아오면 재호출
// - 뷰와 관련된 추가적인 초기화 작업

// viweDidAppear()
// - 뷰 컨트롤러의 뷰가 뷰 께층에 추가된 후 호출됩니다.
// - 뷰를 나타낼 때 필요한 추가 작업
// - 애니메이션을 시작하는 작업

// viewWillDisappear()
// - 뷰 컨트롤러의 뷰가 뷰 계층에서 사라지기 전에 호출됩니다.
// - 뷰가 생성된 뒤 작업한 내용을 되돌리는 작업
// - 최종적으로 데이터를 저장하는 작업

// viewDidDisappear()
// - 뷰 컨트롤러의 뷰가 계층에서 사라진 뒤에 호출
// - 뷰가 사라지는 것돠 관련된 추가 작업






import UIKit

class ExViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func tabCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") else {return}
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }
    @IBAction func tabCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") else { return }
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
