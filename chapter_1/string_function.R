# substr(x, start, stop) x의 원소별로 start에서 stop까지 문자 추출
# substring(x, a, b) x의 원소별로 a[i]에서 b[i]까지 문자 추출 벡터
# grep(pattern, x) pattern 문자열을 포함하는 x의 원소 번호를 찾음
# grepl(pattern, x) pattern 문자열을 포함하는 x의 원소를 TRUE로 반환
# sub(pattern, replacement, x) x의 pattern 문자열을 replacement로 바꿈 원소별로 첫 번째 pattern만 교체
# gsub(pattern, replacement, x) x의 pattern 문자열을 replacement로 바꿈 해당되는 모든 pattern 교체
# strsplit(x, split) x의 원소별로 split 기준을 분할
# paste(..., sep="") ...의 변수들을 원소별로 sep을 넣어 결합
# toupper(x) 대문자로 변환
# tolower(x) 소문자로 변환

# x의 원소별로 3~4번째 문자열 추출
x = c(11710001, 31720002, 42730003, 51740004, 11750006)
substr(x, 3, 4)

# x의 원소별로 3~4번째 문자열 치환 (먼저 문자열 변수로 바꿔야 함)
(xc = as.character(x))
substr(xc, 3, 4) = "99"; xc

# 벡터 연산 (1,1), (2,2), (3,3), (1,4), (2,5),(3,6) 적용
substring("abcdef", 1:3, 1:6)

# 국어를 포함하는 수상명을 찾음
x = c("최우수 국어", "수학 우수", "국어 1등급", "영어 수석", "중국어&국어")
grep("국어", x) #번호로 찾음
grepl("국어", x) #논리로 찾음
grep("국어", x, value=TRUE) # 값으로 찾음

# '국어'를  '지리'로 바꿈 (sub()은 원소별로 하나만, gsub()은 모두 바꿈)
sub("국어", "지리", x)
gsub("국어", "지리", x)

# 수상명을 공란 기준으로 분할 (x가 벡터인 경우 리스트가 됨)
strsplit(x, " ")

# 수상명 끝에 "상"자를 붙임
paste(x, "상", sep="")
