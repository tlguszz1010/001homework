//
//  SignUpViewController.swift
//  001homework
//
//  Created by 박시현 on 2022/07/06.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var signTextField1: UITextField!
    @IBOutlet weak var signTextField2: UITextField!
    @IBOutlet weak var signTextField3: UITextField!
    @IBOutlet weak var signTextField4: UITextField!
    @IBOutlet weak var signTextField5: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var addSignLabel: UILabel!
    @IBOutlet weak var signSwitch: UISwitch!
    
    func setTextField(textField: UITextField, text:String) {
        textField.backgroundColor = UIColor.gray
        textField.textAlignment = .center
        textField.attributedPlaceholder = NSAttributedString(string: text, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = UIColor.black
        
        titleLabel.textAlignment = .center
        titleLabel.text = "Sihyun"
        titleLabel.textColor = UIColor.red
        titleLabel.font = UIFont(name: titleLabel.font.fontName, size:30)
        titleLabel.font = UIFont.boldSystemFont(ofSize: 30)
        
        // 함수로 구현했을 때
        setTextField(textField: signTextField1, text: "이메일 주소 또는 전화번호")
        setTextField(textField: signTextField2, text: "비밀번호")
        setTextField(textField: signTextField3, text: "닉네임")
        setTextField(textField: signTextField4, text: "위치")
        setTextField(textField: signTextField5, text: "추천 코드 입력")
        
// 함수 구현 안했을 때
//        signTextField1.textAlignment = .center
//        signTextField1.backgroundColor = UIColor.gray
//        signTextField1.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        
//        signTextField2.textAlignment = .center
//        signTextField2.backgroundColor = UIColor.gray
//        signTextField2.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
//        signTextField3.textAlignment = .center
//        signTextField3.backgroundColor = UIColor.gray
//        signTextField3.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
//
//        signTextField4.textAlignment = .center
//        signTextField4.backgroundColor = UIColor.gray
//        signTextField4.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
//
//        signTextField5.textAlignment = .center
//        signTextField5.backgroundColor = UIColor.gray
//        signTextField5.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        signUpButton.setTitle("회원가입", for: .normal)
        signUpButton.backgroundColor = .white
        signUpButton.setTitleColor(.black, for: .normal)
        
        addSignLabel.text = "추가 정보 입력"
        addSignLabel.textColor = UIColor.white
        addSignLabel.textAlignment = .left
        
        signSwitch.setOn(false, animated: true)
        signSwitch.onTintColor = UIColor.systemPink
    }
    
    @IBAction func signUpButtonClicked(_ sender: UIButton) {
        
        // 이메일과 비밀번호는 필수로 기입
        if signTextField1.text?.isEmpty == true || signTextField2.text?.isEmpty == true {
            print("다시 입력해주세요 !")
        }
        // 비밀번호는 최소 6자리 이상
        if signTextField2.text!.count < 6 {
            print("다시 입력해주세요 !")
        }
        // 추천코드는 숫자만 입력
//        for i in signTextField5.text! {
//            if i.isNumber == false {
//                print("다시 입력해주세요 !")
//            }
//        }
        // if let 바인딩 사용
        if let textField5 = signTextField5.text { // textField5에 signTextField5.text가 성공적으로 할당된다면, {} 중괄호 안의 코드를 실행한다.
            if Int(textField5) == nil { // Int로 형변환 했는데 nil이라면 숫자가 아니기 때문에 숫자 입력 알려주기!
                print("숫자를 입력하세요")
            }
        }
        
        view.endEditing(true)
    }
    
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }

    

}
