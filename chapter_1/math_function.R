# abs(x) 절대 값
# sqrt(x) 제곱 근
# ceiling(x) x 이상 최소 정수
# floor(x)  x 이하 최대 정수
# trunc(x) 소수점 미만 버림
# round(x, digits=n) 소수점 아래 n자리까지 반올림
# signif(x, digits=n) 유효 숫자 n자리로 반올림
# cos(x), sin(x), tan(x) 삼각함수
# acos(x), cosh(x), acosh(x) 기타 삼감함수
# log(x) 자연 로그
# log10(x) 대수 로그
# exp(x) 지수 함수 e^x

x = c(5.5, -5.5)
ceiling(x) #올림
floor(x) #내림
trunc(x) #버림
round(x, 0) #반올림(소숫점 아래 자리수 = 0)
signif(x, 1) #반올림(유효 숫자 = 1)
round(sqrt(1:10), 3)
