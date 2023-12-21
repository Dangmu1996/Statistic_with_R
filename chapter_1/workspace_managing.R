# setwd("경로") 작업 영역 설정
# getwd() 현재 작업영역
# .libPaths("경로") 패키지 경로 설정
# install.packages("패키지 이름") 패키지 설치
# library(패키지 이름) 패키지 적재

# 작업영역 설정 (오류) '\'는 '\\'로 표기해야 함
setwd("/home/dangmu/Rstudy")

# 패키지를 다음 디렉토리에 설치함
.libPaths("/home/dangmu/Rstudy/chapter_1/library")

# animation 패키지 설치
install.packages("animation")

# 설치된 animation 패키지 불러옴
library(animation)

