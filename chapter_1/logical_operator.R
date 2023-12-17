# logic1 | logic2 logic1과 logic2d의 대응되는 원소별로 OR 논리 연산
# logic1 & logic2 logic1과 logic2의 대응되는 원소별로 And 논리 연산
# !logic logic의 원소별로 True면 False, False면 True 변환 
# logic1 || logic2 logic1과 logic2의 첫 번째 원소에 대해 Or 논리 연산 
# logic1 && logic2 logic1과 logic2의 첫 번째 원소에 대해 and 논리 연산 

# 세 가지 길이의 논리 벡터 3개 지정
(a = c(T, T, F, F))
(b = c(T, F))
(c = c(T, F, F))

# a가 b의 배수 관계 이므로 더 짧은 b를 두 번 사용하여 계산
a | b
a & b

# a, c가 배수 관계가 아니므로 경고 메시지가 출력됨(c는 1번 + 'T') R까지 사용됨
a | c

# 첫 번째 원소에 대해서만 or 논리연산 수행 -> 이상함 (error발생하는데?)
a || c
