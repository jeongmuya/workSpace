import UIKit

var greeting = "Hello, playground"

/*
        if 조건문 {
            //조건문이 "참" 일때 실행
        }else{
 
        }
 
 */

var isChecked = false

if isChecked {
    print("체크되어 있습니다.")
}else{
    print("출력되어 있지 않습니다.")
}

/*
 if 조거문1 {
    //해당 [조건문1]이 "참" 일때 실행
 }else if 조건문2 {
    //해당 [조건문2]이 "참" 일때 실행
 }else {
 
 }
 */

var time = 12

if time == 9 {
    print("아침식사 시간입니다.")
}else if time == 12 {
    print("점심식사 시간입니다.")
}else if time == 19 {
    print ("저녁식사 시간입니다.")
}else {
    print("자유시간입니다.")
}


/*
 
    switch  입력변수 {
    case 입력값1:
        // 입력변수가 입력값1과 이리할 때 실행
    case 입력값2:
    case 입력값3:
    default:
        // 어떤 입력값과 일치하지 않을 때 실행
 }
 */


let color = "blue"

switch color {
case "red":
    print("레드입니다")
case "blue":
    print("블루입니다")
case "green":
    print("그린입니다")
default:
    print("비교할 수 있는 색이 없습니다")
}

/*
    guard 조건 else {
        조건에 맞지 않을 때 실행
        return
    }
 */

func getName(name: String?) -> String{
    guard let uName = name else {
        return "이름값이 존재 하지 않습니다."
    }
    return uName
}

getName(name: "아틀라스")
getName(name: nil)
