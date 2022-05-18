install.packages("reader")
library(reader)

target <- read.csv("/Users/euijoolee/Desktop/target.csv", encoding = "UTF-8")
library(plyr)
##변수명 간단하게 정리 
names(target) = c("SEX", "GRADE","BC_MAI","CP_MAI" ,"BC_SOI","CP_SOI","BC_MAE","CP_MAE","BC_DF","CP_DF","BC_MACE","CP_MACE","BC_SCI","CP_SCI","BC_HE","CP_HE","BC_MAPTC","CP_MAPTC","BC_MM","CP_MM","BC_PD","CP_PD","BC_MPC","CP_MPC","BC_HT","CP_HT","BC_CLA","CP_CLA","BC_OSS","CP_OSS","IOCB")
dim(target)
summary(target)
##ggplot package 설치
install.packages("ggplot2")
library(ggplot2)
par(family = "AppleGothic") ##mac os 필수

summary(target) ##살펴보는 목적으로
count(target)
target$CP_MAI ##변수 살펴보기
table(target$BC_MAI)
#바플롯

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$SEX),
             decreasing = TRUE),
        col = color.palette,
        main = "성별")


color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$GRADE),
             decreasing = TRUE),
        col = color.palette,
        main = "학년")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$BC_MAI),
             decreasing = TRUE),
        col = color.palette,
        ylab = "Freqeuency",
        xlab = "(만원)",
        ylim = c(0,50),
        main = "코로나 이전 월평균 수입")


color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$CP_MAI),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 월평균 수입")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$BC_SOI),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 이전 수입원")
color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$CP_SOI),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 수입원")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$BC_MAE),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나이전 지출비용")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$CP_MAE),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 지출비용")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$BC_DF),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나이전 음주빈도")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$CP_DF),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 음주빈도")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$BC_MACE),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나이전 월평균 의복지출")
color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$CP_MACE),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 월평균 의복지출")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$BC_SCI),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나이전 장바구니 물품")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$CP_SCI),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 장바구니 물품")
color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$BC_SCI),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나이전 장바구니 물품")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$CP_SCI),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 장바구니 물품")
color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$BC_HE),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나이전 월평균 보건비용")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$CP_HE),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 월평균 보건비용")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$BC_MAPTC),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나이전 월평균 대중교통비용")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$CP_MAPTC),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 월평균 대중교통비용")


color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$BC_MM),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나이전 식사해결 방법")
color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$CP_MM),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 식사해결 방법")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$BC_PD),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 이전 자기계발 지출 영역")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$CP_PD),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 자기계발 지출 영역")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$ BC_MPC),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 이전 월평균 통신 비용")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$CP_MPC),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 월평균 통신 비용")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$ BC_HT),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 이전 주거형태")
color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$CP_HT),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 주거형태")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$ BC_CLA),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 이전 문화레저 영역")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$CP_CLA),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 문화레저 영역")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$ BC_OSS),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 이전 OTT 서비스 구독")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$CP_OSS),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 OTT 서비스 구독")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target$IOCB),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나가 소비행태에 미친 영향도")
##-----------------------------------------------
##수정필요
ggplot(target, aes(x = BC_MAI, fill = GRADE)) + geom_bar(position = "dodge")

##파이차트##
##성별##

##코로나 이전
pie(sort(table(target$BC_MAI),
         decreasing = TRUE),
    radius = 1,
    main = "코로나 이전 월평균 수입")

##-----------------------------------------------
##change xhi - > fisher 카이제곱 검정
tti1<-xtabs(~ GRADE + BC_MAI, data = target)
tti1
result1<- fisher.test(tti1,Finaltable,simulate.p.value = TRUE)
result1
##par(mfrow=c(1,1))

tti2<-xtabs(~ BC_MAI + CP_MAI, data = target)
tti2
result2<- fisher.test(tti2,Finaltable,simulate.p.value = TRUE)
result2
tti3<-xtabs(~ BC_MAI + CP_MAI, data = target)
tti3
result3<- fisher.test(tti3,Finaltable,simulate.p.value = TRUE)
result3
tti4<-xtabs(~ BC_SOI + CP_SOI, data = target)
tti4
result4<- fisher.test(tti4,Finaltable,simulate.p.value = TRUE)
result4
tti5<-xtabs(~ BC_MAI + BC_SOI, data = target)
tti5
result5<- fisher.test(tti5,Finaltable,simulate.p.value = TRUE)
result5
tti6<-xtabs(~ CP_MAI + CP_SOI, data = target)
tti6
result6<- fisher.test(tti6,Finaltable,simulate.p.value = TRUE)
result6

tti7<-xtabs(~BC_MAE + CP_MAE, data = target)
tti7
result7<- fisher.test(tti7,Finaltable,simulate.p.value = TRUE)
result7
tti8<-xtabs(~ BC_DF + CP_DF, data = target)
tti8
result8<- fisher.test(tti8,Finaltable,simulate.p.value = TRUE)
result8

##범주형 데이터로 변환하는 코드
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



##ANOVA
target$BC_MAI <- factor(target$BC_MAI, ordered = F)
result <- aov(CP_MAI ~ BC_MAI, data = target)
result

##cross tab SPSS version
x<-target$BC_MAI
y<-target$CP_MAI
x;y
Result<-data.frame(BC_MAI=x,CP_MAI=y )
dim(Result)
table(Result)
install.packages("gmodels")
library(gmodels)
CrossTable(x,y)
CrossTable(x,y, chisq = TRUE, expected = TRUE, fisher = TRUE, format = c("SPSS"))