import UIKit

//데이터 타입

//Bool : 참 거짓을 표현하기 위한 타입
var isChecked: Bool = false
isChecked = true

//Int : 64비트 정수형 타입
var temperature: Int = -100
temperature = 100

//UInt(Unsigned Interger) : 64비트 정수형 타입
var cakes: UInt = 100
cakes = 200

//Float: 32비트 부동소수형
var pi: Float = 3.14
pi = 314

//Double: 64비트 부동소수형
var pi2: Double = 3.14
pi2 = 314

//Character: 한 문자를 표현하기 위한 타입
var sampleCharacter: Character = "A"
sampleCharacter = "B"

//String: 여러문자를 표현하기 위한 타입
var sampleString: String = "Hello, World!"
sampleString = "Swift"

//타입 추론
let test = 100
type(of: test)

var text: String = "Hello, World!"
text = "Swift"
type(of: text)
//타입 추론

let test2 = 100
type(of: test)

var text2: String = "Hello, World!"
text2 = "Swift"
type(of: text2)



//nil: 없음, 존재하지 않음을 나타내는 키워드
var sample: Int? = nil
type(of: sample)

var sample2: String? = nil
type(of: sample2)





