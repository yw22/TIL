# 핸드폰 번호 가리기

### 문제설명
프로그래머스 모바일은 개인정보 보호를 위해 고지서를 보낼 때 고객들의 전화번호의 일부를 가립니다.
전화번호가 문자열 phone_number로 주어졌을 때, 전화번호의 뒷 4자리를 제외한 나머지 숫자를 전부 `*`으로 가린 문자열을 리턴하는 함수, solution을 완성해주세요.

### 제한조건

- phone_number는 길이 4 이상, 20이하인 문자열입니다.


### 예시

|phone_number|return|
|:---:|:---:|
|"01033334444"|"*******4444"|
|"027778888"|"*****8888"|


### 문제풀이

"*" * (문자길이 -4) + (마지막 번호) 방식을 생각했고
마지막 번호 4자리는 인덱스를 사용하여 알아냈다

다른 풀이법으로는 suffix를 활용하여 마지막 4자리를 알아낼수 있다


또한
```
func solution(_ phone_number:String) -> String {
    guard phone_number.count > 4 else { return phone_number }
    return String(phone_number.enumerated().map{($0.offset < phone_number.count-4 ? Character("*") : $0.element)})
}
```
위 코드처럼 enumerated()를 사용하여 인덱스를 알아내는 방법도 있다.