def is_odd(n):
    if n % 2 == 0:
        print(str(n) + "은 짝수입니다")
        return True
    else:
        print(str(n) + "은 짝수가 아닙니다.")
        return False

is_odd(10)
is_odd(17)