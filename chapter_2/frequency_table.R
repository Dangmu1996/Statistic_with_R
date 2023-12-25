.libPaths()
library(Rstat)

# 저장된 데이터 불러오기
data(iris)

# 데이터 구조 확인
str(iris)

# 사용할 데이터 지정(두 번째 열)
x=iris[[2]]

# 도수분포표 작성 -> 함수[1] freq.table() 실행
freq.table(x)

# [참고] 도수분포표 작성 함수 freq.table() 사용법 확인
ch2.man(1)

# [응용 1] 노란색 히스토그램도 같이 작성
freq.table(x, mp=TRUE, col=7)

# [응용 2] 급(class) 구간을 0.5 간격으로 바꾼 경우
(mycut = seq(2, 4.5, by=0.5))

freq.table(x, cuts=mycut)
