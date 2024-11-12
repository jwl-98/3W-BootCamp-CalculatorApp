//
//  CalculatorView.swift
//  3W-CalculatorApp
//
//  Created by 진욱의 Macintosh on 11/11/24.
//

import UIKit

class CalculatorView: UIView {
    

    // MARK: - 레이블설정
    lazy var mainLabel: UILabel = { //메인 레이블 = 표시될 레이블
        let label = UILabel()
        label.textColor = .white //텍스트 색상
        label.text = "12345" // 텍스트 출력 문구
        label.textAlignment = .right //텍스트 오른쪽 정렬
        label.font = UIFont.boldSystemFont(ofSize: 60)//볼드체, 사이즈 60
        
        return label
    }()
    
    // MARK: - 버튼 설정
    
        lazy var numberButton: [UIButton] = {
            
            var saveButton: [UIButton] = []
            var buttonLabel : [String] =
            ["7", "8", "9", "+",
             "4", "5", "6", "-",
             "1", "2", "3", "*",
             "AC", "0", "=", "/"
            ]
                        
            for i in 1...buttonLabel.count  { //총 16개의 버튼 생성
                    let button = UIButton(type: .custom)
                    
                    
                    button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
                    button.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
                    button.frame.size.height = 80
                    button.frame.size.width = 80
                    button.setTitle(buttonLabel[i-1], for: .normal)
                    //button.layer.cornerRadius = 40
                    
                    saveButton.append(button) //생성된 버튼의 갯수만큼 배열에 추가
                }
                return saveButton
        }()
    
   
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        setAutoLayOut()
    }
    
     //메인 레이블의 높이
    // MARK: - 레이블 오토레이아웃
    func setMainLabelConstraints() {
        
        print(#function)
        mainLabel.translatesAutoresizingMaskIntoConstraints = false //자동오토레이아웃 해제
        
        NSLayoutConstraint.activate([ //제약 전부 활성와
            mainLabel.leadingAnchor.constraint(equalTo:
                                                self.leadingAnchor, constant: 30) ,
            mainLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            
            mainLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            
            mainLabel.heightAnchor.constraint(equalToConstant: 100)// 설정된 높이를 기준으로 제약
        ])
    }
  
    func setStackViewAutoLayOut() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        stackView.widthAnchor.constraint(equalToConstant: 350).isActive = true
        stackView.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 60).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    
    lazy var horizontalityStackView: [UIStackView] = {
        var st: [UIStackView] = []
        
        for i in 0..<4 { //한줄에는 4개의 버튼만 담습니다.
            let numButtonArr = UIStackView(arrangedSubviews: Array(numberButton[i*4..<i*4+4])) //배열의 요소를 4개씩 가져옵니다.
            numButtonArr.axis = .horizontal
            numButtonArr.backgroundColor = .black
            numButtonArr.spacing = 10
            numButtonArr.distribution = .fillEqually
            
            st.append(numButtonArr)
        }
    
        return st
        
    }()
    
    //4개씩 담긴배열을 스택뷰로 다시 묶습니다.
    
    lazy var stackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: horizontalityStackView)
        
        st.axis = .vertical //중심선을 기준으로 정렬
        st.backgroundColor = .black
        st.spacing = 10
        st.distribution = .fillEqually
        
        return st
    }()
    
    
    func setup() {
        backgroundColor = .black
        addSubview(mainLabel)
        addSubview(stackView)
    }
    
    func setAutoLayOut() {
        setMainLabelConstraints()
        setStackViewAutoLayOut()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
