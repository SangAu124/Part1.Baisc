
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


