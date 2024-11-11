//
//  CalculatorView.swift
//  3W-CalculatorApp
//
//  Created by 진욱의 Macintosh on 11/11/24.
//

import UIKit

class CalculatorView: UIView {
    

    
    lazy var mainLabel: UILabel = { //메인 레이블 = 표시될 레이블
        let label = UILabel()
        label.textColor = .white //텍스트 색상
        label.text = "12345" // 텍스트 출력 문구
        label.textAlignment = .right //텍스트 오른쪽 정렬
        label.font = UIFont.systemFont(ofSize: 60, weight: .bold) //볼드체, 사이즈 60
        
        return label
    }()
    

    
    let mainLabelHeight: CGFloat = 100 //메인 레이블의 높이
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        setMainLabelConstraints()
    }
    
    
    func setMainLabelConstraints() {
        print(#function)
        mainLabel.translatesAutoresizingMaskIntoConstraints = false //자동오토레이아웃 해제
        
        NSLayoutConstraint.activate([ //제약 전부 활성와
            mainLabel.leadingAnchor.constraint(equalTo:
                                                self.leadingAnchor, constant: 30) ,
            mainLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            
            
            mainLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            
            mainLabel.heightAnchor.constraint(equalToConstant: mainLabelHeight)// 설정된 높이를 기준으로 제약
        ])
    }
  
    func setup() {
        backgroundColor = .black
        addSubview(mainLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
