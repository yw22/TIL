# 약수의 합

### 문제설명
- 정수 n을 입력받아 n의 약수를 모두 더한 값을 리턴하는 함수, solution을 완성해주세요.

### 제한조건

- n은 0 이상 3000이하인 정수입니다.


### 예시

|s|return|
|:---:|:---:|
|12|28|
|5|6|


### 문제풀이

약수를 구하는 방법은 2...n/2 나눌때 나머지가 없을때 약수이다 또한 1과 자기자신은 항상 약수이다.