# history() 기 수행 명령문 열기
# savehistory() 명령문 저정
# loadhistory() 명령문 불러오기
# sink() 출력 파일로 보내어 저장
# source() 파일에 저장된 명령어 일괄 실행

# 명령문 개수 제한(max.show=25) 없이 모두 표시
history(max.show=Inf)
savehistory(file="/home/dangmu/Rstudy/chapter_1/data/myfile.txt")
loadhistory(file="/home/dangmu/Rstudy/chapter_1/data/myfile.txt")

#출력을 다음 파일에 저장(덮어씀)
sink(file="/home/dangmu/Rstudy/chapter_1/data/outfile.txt")

# 출력을 outfile.txt에 이어서 저장
sink(file="/home/dangmu/Rstudy/chapter_1/data/outfile.txt", append=True)

#화면으로 출력(복귀)
sink()

# 다음 폴더 아래 명령문 일괄 실행
source(file="/home/dangmu/Rstudy/chapter_1/data/myexe.txt")