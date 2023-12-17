# a>b a가 b보다 크면 True, 아니면 False
# a < b a가 b보다 작으면 True 아니면 False
# a==b a와 b가 같으면 True, 아니면 False
# a>=b a가 b보다 크거나 같으면 True, 아니면 false
# a<=b a가 b보다 작거나 같으면 True, 아니면 False
# a|=b ark b와 다르면 True, 아니면 False

(a=1:10);(b=1:5);(c=4:1)
(x=matrix(1:12, 3, 4))
(y=matrix(1:12, 4, 3, byrow=T))
(z=matrix((12:1), 3,4))

# a,b가 배수 관계이므로 더 짧은 b를 두 번 사용하여 계산
a>b

# a,c가 배수 관계가 아니므로 경고 메시지가 출력됨(c는 2.5번 사용됨)
a>c

# a의 길이가 x의 천제 길이보다 짧으므로 1~10 이후 1, 2까지 반복됨
a>=x

# x의 전체 길이가 c의 세 배이므로 벡터 c가 3회 반복됨
c <= x

# x와y의 전체 길이는 같지만, 차원이 다르므로 오류 발생
x>y

# x와 z의 차원이 같으므로 연산이 수행됨
x>z

