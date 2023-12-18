# length(x) 변수 x의 원소의 개수
# str(x) 변수 x의 구조
# class(x) 변수 x의 유형
# names(x) 변수 x 원소의 이름
# c(x, y, ...) 벡터 x와 벡터 y, ...를 결합
# cbind(x, y, ...) 벡터 x와 벡터 y, ...를 열별로 결함
# rbind(x, y, ...) 벡터 x와 벡터 y, ...를 행별로 결합
# ls() 사용중인 변수수의 목록
# rm(x) 변수 x를 제거

# 변수의 구조: str() (R 내장 데이터 'iris' 사용)
str(iris)

# 변수의 유형: class()
class(iris)

# 각 원소(혹은 열)의 이름: names()
names(iris)

# 원소(혹은 열)의 개수: length()
length(iris)

#원소의 개수 : length()
x = c(6, 9, 8, 7, 3, 5, 10); length(x)

#변수의 유형
class(x)

# 각 원소의 이름: names()
names(x) = LETTERS[1:length(x)]; x
names(x)

# 벡터 x와 벡터 y, ...를 결합: c()
x = c(6,9,8,7,3,5,10); y = 3:7
c(x,y)

# 벡터 x와 벡터 y,...를 열별로 결합: cbind()
x=1:2; y=3:4; z=5:6
cbind(x,y,z)

# 벡터 x와 벡터 y, ...를 행별로 결합: rbind()
x = 1:10; y=11:20; z=21:30
rbind(x,y,z)

# 사용 중인 변수의 목록: ls()
ls()

# 변수 x와 y를 제거: rm()
rm(x, y); ls()

# 모든 변수를 제거
rm(list=ls())

# seq(from, to, by, length, ...) 일련의 수열 생성
# rep(x, times, each, ...) 벡터 x를 반복
# cut(x, breaks, labels, ...) 벡터 x를 분할
# sort(x, decreasing = FALSE, ...) 벡터 x를 크기순으로 정렬
# order(x) 벡터 x의 순서 (정렬된 데이터의 원래 순서)

# 1에서 10까지 2간격으로 일련의 수열 생성
seq(1, 10, 2)

# 1에서 5.5까지 같은 간격으로 10개
seq(1, 5.5, length=10)

# 1에서 0.5 간격으로 10개
seq(1, by=0.5, length=10)

#(1, 2, 3)을 4회 반복
rep(1:3, 4)

#(1, 2, 3)을 각각 4회 반복
rep(1:3, each=4)

# 0에서 10까지의 5개 구간으로 분할(각 원소가 속한 구간이 표시됨)
cut(0:10, 5)

#벡터를 크기 순으로 정렬
sort(c(5,1,4,9,6,3,2))
sort(c(5,1,4,9,6,3,2), decreasing = T)

#오름차순으로 정렬된 데이터를 원래 순서
order(c(5,1,4,9,6,3,2))

#내림차순으로 정렬된 데이터의 원래 순서
order(c(5,1,4,9,6,3,2), decreasing = T)

# matix(x, nrow, ncol) 행렬 만들기
# rownames(x) 행 이름 지정
# colnames(x) 열 이름 지정
# data.frame(...) 데이터 프레임 만들기
# list(...) 리스트 만들기

# 행렬 만들기(3행, 5열)
(x=matrix(1:15, nrow=3, ncol=5))

# 행/열 이름 지정
rownames(x) = letters[1:3]
colnames(x) = paste0("c", 1:5); x

# 행렬의 열, 행 원소 추출 및 제거
x[, 4] #4열 추출
x[-c(1,3),]
x[c("a", "c"),] # 1행 3행 추출
x[c(1,3), 2:5] # 1행과 3행의 2열 ~ 5열 추출
x[c("a","c"),2:5] # 1행과 3행의 2열 ~ 5열 추출

# 데이터 프레임 만들기(각 열의 길이가 같아야 함)
df1= data.frame(c1=letters[1:20], c2=1:20, c3=(1:20 %% 3)==0)
names(df1) = c("요인", "숫자", "논리"); str(df1)

# 데이터 프레임 행 추출
df1[c(1,3),]

# 데이터 프레임 열 추출
df1[c(2,3)]

# 데이터프레임 '숫자' 열의 평균 계산
mean(df1$숫자)

#리스트 만들기(각 원소의 유형, 형태, 길이가 달라도 가능함)
x=list(c1=letters[1:10], c2=1:15, c3=(1:7 %% 3)==0)
names(x) = c("요인", "숫자", "논리")
str(x)

# 리스트 원소 추출
x[c(1,3)]

x[c("숫자", "논리")]

x$숫자

# 예제 데이터프레임 만들기
x= data.frame(ID=1:4, Age=c(27,23,25,29), Class=c("A","B","B","A"))
y= data.frame(ID=4:1, Name=c("John","Tom","Mary","Candy"))

# 열 결합 -> ID가 일치하지 않으므로 무의미함
cbind(x,y)

# 데이터프레임 x에서 2열(Age) 기준 오름차순 정렬
x[order(x[[2]]), ]

# 데이터프레임 x에서 3열(Class) 기준으로 구분하여 Age 변수의 평균 계산
aggregate(x$Age, by=list(x[[3]]), FUN=mean)

# 데이터 프레임 x와 y를 "ID"열 기준으로 통합(x와 y 모두 "ID" 열이 있어야 함)
merge(x, y, by="ID")

# 데이터 프레임 x와 y를 "ID"열과 "Age"열 기준으로 통합
# (x와 y 모두 "ID"열과 "Age"열이 있어야 하므로 이 예에서는 오류 발생)
merge(x,y,by=c("ID", "Age"))

