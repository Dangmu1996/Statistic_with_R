# a:b
# a부터 b까지 1씩 증가(감소)하는 벡터 생성
# 연속 숫자 채우기 : a < b이면 1씩 증가, a>b이면 1씩 감소

# a %in% b
# 포함 관계 연산 : a의 각 원소별로 b에 포함되면 True, 아니면 False

# a %*% b
# 행렬 a와 b의 행렬곱 계산, a의 열수와 b의 행수가 같아야 함
# a와 b가 같은 길이의 벡터인 경우, a와 b의 내적(inner product) 계산

# a %o% b
# 벡터 a와 b의 외적(outer produict) 계산, a는  행벡터, b는 열벡터로 간주함

# outer(a,b,"함수")
# 외 함수 (outer function) 계산

# 1부터 1000만 까지 연속 숫자 만들기 & 벡터 길이 확인
x = 1:1E7; length(x)

# 1부터 100까지의 연속된 숫자 중 10개를 뽑은 경우, 7번 추측해서 맞추기 게임
x = 1:100

# 재현성 확보를 위해 씨드 설정 후 10개 샘플링(결과는 비밀)
set.seed(1234); y=sample(x,10)

# 마음대로 7개의 숫자 선택
guess = c(25, 33, 47, 59, 78, 66, 92)

# 추측 결과 확인
guess  %in% y

# 결과 확인
y

# 행렬 곱 계산
x= matrix(1:6,2,3); y=matrix(1, 3, 4)
x %*% y

# 외적 (outer product) 계산
x =1:3; y = 1:4; x %o% y

# 외적(outer) 함수를 사용하여 논리 연산 표 만들기
a = c(T, T, F, F); b = c(T, F)
names(a)=as.character(a); names(b) = as.character(b)
outer(b, a, "*") # 숫자형 and 연산표

outer(b, a, "&") #논리형 and 연산 표
