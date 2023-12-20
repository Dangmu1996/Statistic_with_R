# table(x) 단일 변수를 표로 요약
# table(...) 여러 변수를 분할표로 요약
# addmargins(tab) 표를 합계를 구함
# prop.table(tab) 표의 도수 비율 계산

# 변수 이름 조사
x = mtcars; names(x)

# 단일 변수를 표로 요약 -> (4기통 11, 6기통 7, 8기통 14)
(t1 = table(x$cyl))

# 두 변수를 표로 요약 -> 수동(1), 자동(0) 별로 기통 수(4,6,8) 분류
(t2 = table(x$am, x$cyl))

# 표의 합계를 구함
addmargins(t1)
addmargins(t2)

# 표의 도수 비율 계산
prop.table(t2)
addmargins(prop.table(t2))
