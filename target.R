install.packages("reader")
library(reader)
target <- read.csv("/Users/euijoolee/Desktop/target.csv", encoding = "UTF-8")
head(target)
library(plyr)
##변수명 간단하게 정리 
names(target) = c("SEX", "GRADE","BC_MAI","CP_MAI" ,"BC_SOI","CP_SOI","BC_MAE","CP_MAE","BC_DF","CP_DF","BC_MACE","CP_MACE","BC_SCI","CP_SCI","BC_HE","CP_HE","BC_MAPTC","CP_MAPTC","BC_MM","CP_MM","BC_PD","CP_PD","BC_MPC","CP_MPC","BC_HT","CP_HT","BC_CLA","CP_CLA","BC_OSS","CP_OSS","IOCB")
dim(target)
summary(target)
##ggplot package 설치
install.packages("ggplot2")
library(ggplot2)
par(family = "AppleGothic")
summary(target)

### 변수들 범주형 변수로 직접 변환 
target$SEX <-ifelse(target$SEX=='남',1,
       ifelse(target$SEX=='여',0,as.integer())) #SEX 변수 숫자형으로 변환
target$CP_MAI <-ifelse(target$CP_MAI == "0 이상 20  미만",1,
                       ifelse(target$CP_MAI == "20 이상 40 미만",2,
                              ifelse(target$CP_MAI == "40 이상 60 미만",3,
                                     ifelse(target$CP_MAI=="60 이상 80 미만",4,
                                            ifelse(target$CP_MAI=="80 이상",5,as.numeric())))))


target$BC_MAI <- ifelse(target$BC_MAI == "0 이상 20  미만",1,
                        ifelse(target$BC_MAI == "20 이상 40 미만",2,
                           ifelse(target$BC_MAI == "40 이상 60 미만",3,
                                  ifelse(target$BC_MAI=="60 이상 80 미만",4,
                                         ifelse(target$BC_MAI=="80 이상",5,as.numeric())))))
##범주형 변수들 코드 변환 예시 끝------

summary(target) ##살펴보는 목적으로
count(target)
target$CP_MAI ##변수 살펴보기
table(target$BC_MAI)

##매우 간단한 파이차트
pie(table(target$BC_MAI), col=rainbow(5),
        main="코로나 이전 월평균 수입",
        ylab = "(명)",)
color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
##바플롯
barplot(sort(table(target$BC_MAI),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 이전 월평균 수입")
        
##파이차트
pie(sort(table(target$BC_MAI),
         decreasing = TRUE),
    radius = 1,
    main = "코로나 이전 월평균 수입")
##change xhi - > fisher
tti<-xtabs(~ GRADE + BC_MAI, data = target)
tti
result<- fisher.test(tti,Finaltable,simulate.p.value = TRUE, B=1e7)
result
