# 단일 변수(벡터, 행렬)만 사용 가능한 통계 함수
# x의 평균 mean(x, trim=0, na.rm=FALSE)
# x의 표준 편차 sd(x, na.rm=FALSE)
# x의 중앙값(중위수) median(x, na.rm=FALSE)
# x의 분위수 quantile(x, probs=seq(0, 1, 0.25), na.rm=FALSE,...)
# fivenum(x, na.rm=TRUE) x의 최소치, 분위수(25%, 50%, 75%), 최대치
# diff(x, lag=1, differences=1, ...) x의 열별 lag 간격 원소별 차이

# 여러 변수 사용이 가능한 통계 함수
# range(..., na.rm=FALSE, finite=FALSE) ... 전체의 최소치와 최대치
# sum(..., na.rm=FALSE) 전체의 합
# max(..., na.rm=FALSE) 전체의 최대치
# min(..., na.rm=FALSE) 전체의 최소치
# pmax(..., na.rm=FALSE) ...의 대응되는 원소별 최대치
# pmin(..., na.rm=FALSE) ...의 대응되는 원소별 최소치

# 열별로 적용되는 통계 함수
# summary(x) 열별 최소치, 분위수(25%, 50%), 평균, 분위수(75%), 최대치
# var(x, na,rm=FALSE) x의 분산, 또는 분산-공분산 행렬
# scale(x, center=TRUE, scale = TRUE) x의 열별 표준화 값

# 전체(벡터, 행렬, 데이터프레임)에 적용되는 통계 함수
# cumsum(x) x의 원소별 누적 합
# cumprod(x) x의 원소별 누적 곱
# cummax(x) x의 원소별 누적 최대치
# cummin(x) x의 원소별 누적 최소치
# na.rm -> 데이터에 결측치가 있는 경우 무시할 것인지에 관한 것
# 결측치(NA)가 있는 벡터
(x=c(1:10, NA))

# 결측치(NA)를 포함하여 계산하여 결과가 NA로 나옴
mean(x)

# 결측치(NA)를 제외하고 계산하여 결과가 5.5로 나옴
mean(x, na.rm=TRUE)

# 결측치(NA)를 포함하여 계산하여 오류 발생
quantile(x)

# 결측치(NA)를 제외하고 계산하여 결과가 나옴
# 활률(probs)을 지정하지 않으면 자동으로 25% 간격으로 배정됨
quantile(x, na.rm=T)

# 세 개의 벡터
x=1:3; y=4:7; z=8:10

# 여러 개의 변수 입력이 허용되는 함수
sum(x,y,z)

# 여러 개의 변수 입력이 허용되지 않는 함수
mean(x, y, z)

#올바른 사용법
mean(c(x,y,z))

# 모든 변수를 통합한 전체의 최소치
min(5:1, 2.4)

# 두 변수의 대응되는 원소별 최소치(두 번째 변수 2.4는 5회 반복 사용됨)
pmin(5:1, 2.4)

# 누적 합
cumsum(1:10)

# 누적 곱
cumprod(1:10)

# 누적 최소치
cummin(c(3:1, 2:0, 4:2))

# 누적 최대치
cummax(c(3:1, 2:0, 4:2))

# 연속된 데이터의 차이를 구함( 뒤에 데이터 - 앞의 데이터)
diff(1:10)
diff(10:1)

# 2 간격으로 연속된 데이터의 차이를 구함
diff(1:10, 2)

# 2회 반복하여 연속된 데이터의 차이를 구함
diff(1:10, 1, 2)

# 0에서 10까지 정수를 2회 반복하여 누적
(x=cumsum(cumsum(0:10)))

# 2 간격으로 연속된 데이터의 차이를 구함(n의 제곱이 나옴)
diff(x, lag=2)
