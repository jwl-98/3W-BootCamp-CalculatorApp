# 3W-BootCamp-CalculatorApp

****
정수형(Int)만을 계산하는 계산기 입니다.
SwiftUI를 사용해 만들었습니다
필수 과제 조건은 LV.1 ~ LV.5 까지 입니다.
도전 과제는 LV.6~ LV.8 까지 입니다.
****

## LV.1 2024.11.11


<img width="728" alt="스크린샷 2024-11-11 오후 1 24 06" src="https://github.com/user-attachments/assets/2dfd0763-223a-49b1-9168-2b2db8fc9c72">


### 기능구현 
MVC 패턴을 연습해보고자 
Models 
Views
Controllers 세가지 폴더로 분리했습니다. 

Views에는 계산기 메인 화면의 색상, 레이블의 설정, 레이블의 오토레이아웃 설정이 있습니다. 
이 설정은 Controllers 폴더내 ViewController에서 loadView()에서 
기본 view을 calculatorView로 교체합니다.

