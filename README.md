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
****

## LV.2~ LV3 2024.11.12

버튼을 생성해서 UIStackView에 넣기


### 기능구현
반복문을 통해서 버튼을 16개를 한꺼번에 생성했습니다.

<img width="1328" alt="스크린샷 2024-11-12 오후 5 39 12" src="https://github.com/user-attachments/assets/516d25c9-6a97-4178-8323-b18421d6a011">



4개의 버튼을 horizontalityStackView 에서 우선 가로 정렬로 스택뷰에 담습니다.

<img width="1341" alt="스크린샷 2024-11-12 오후 5 39 24" src="https://github.com/user-attachments/assets/39803e37-651e-4a55-bab3-7d9464f94e80">


그리고 stackView를 통해서 담긴버튼들을 다시 스택뷰로 묶습니다.
지금 추후에 연산은 어떻게 연결 해야할지.. 큰일났습니다...

## LV.4 2024.11.12

숫자 이외의 버튼을 오렌지색으로 변경하기


### 기능구현

반복문을 사용해서 버튼을 생성했기에 
반복문 내부에 한 조건을 추가했습니다.
버튼에 들어가는 레이블을 Int형으로 형변환해서 nil이 나온다면 버튼을 오렌지색으로 변경합니다.
