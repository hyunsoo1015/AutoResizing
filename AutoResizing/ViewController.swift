import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //뷰 컨트롤러의 뷰를 가져오기
        let superView = self.view
        
        //레이블을 생성하고 뷰에 추가
        let myLabel = UILabel()
        myLabel.text = "My Label"
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        superView?.addSubview(myLabel)
        
        //버튼을 생성하고 뷰에 추가
        let myButton = UIButton()
        myButton.setTitle("My Button", for: .normal)
        myButton.backgroundColor = UIColor.blue
        myButton.translatesAutoresizingMaskIntoConstraints = false
        superView?.addSubview(myButton)
        
        //레이블을 정 중장으로 배치
        var myConstraint = NSLayoutConstraint(item: myLabel, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: superView, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1.0, constant: 0.0)
        superView?.addConstraint(myConstraint)
        
        myConstraint = NSLayoutConstraint(item: myLabel, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: superView, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1.0, constant: 0.0)
        superView?.addConstraint(myConstraint)
        
        //버튼을 레이블의 왼쪽에 배치하고 하단을 맞추기
        myConstraint = NSLayoutConstraint(item: myButton, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: myLabel, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1.0, constant: -10.0)
        superView?.addConstraint(myConstraint)
        
        myConstraint = NSLayoutConstraint(item: myButton, attribute: NSLayoutConstraint.Attribute.lastBaseline, relatedBy: NSLayoutConstraint.Relation.equal, toItem: myLabel, attribute: NSLayoutConstraint.Attribute.lastBaseline, multiplier: 1.0, constant: 0.0)
        superView?.addConstraint(myConstraint)
    }
}

