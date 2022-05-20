install.packages("reader")
library(reader)

target_ <- read.csv("/Users/euijoolee/Desktop/target_.csv", encoding = "UTF-8")
library(plyr)
##변수명 간단하게 정리 
names(target_) = c("SEX", "GRADE","BC_MAI","CP_MAI" ,"BC_SOI","CP_SOI","BC_MAE","CP_MAE","BC_DF","CP_DF","BC_MACE","CP_MACE","BC_SCI","CP_SCI","BC_HE","CP_HE","BC_MAPTC","CP_MAPTC","BC_MM","CP_MM","BC_PD","CP_PD","BC_MPC","CP_MPC","BC_HT","CP_HT","BC_CLA","CP_CLA","BC_OSS","CP_OSS","IOCB")
dim(target_)
summary(target_)
##ggplot package 설치
install.packages("ggplot2")
library(ggplot2)
par(family = "AppleGothic") ##mac os 버전

summary(target_) ##살펴보는 목적으로
count(target_)
target_$CP_MAI ##변수 살펴보기
table(target_$BC_MAI)
#바플롯

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$SEX),
             decreasing = TRUE),
        col = color.palette,
        main = "성별")


color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$GRADE),
             decreasing = TRUE),
        col = color.palette,
        main = "학년")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$BC_MAI),
             decreasing = TRUE),
        col = color.palette,
        ylab = "Freqeuency",
        ylim = c(0,50),
        main = "코로나 이전 월평균 수입")


color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$CP_MAI),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 월평균 수입")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$BC_SOI),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 이전 수입원")
color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$CP_SOI),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 수입원")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$BC_MAE),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나이전 지출비용")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$CP_MAE),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 지출비용")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$BC_DF),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나이전 음주빈도")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$CP_DF),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 음주빈도")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$BC_MACE),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나이전 월평균 의복지출")
color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$CP_MACE),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 월평균 의복지출")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$BC_SCI),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나이전 장바구니 물품")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$CP_SCI),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 장바구니 물품")
color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$BC_SCI),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나이전 장바구니 물품")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$CP_SCI),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 장바구니 물품")
color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$BC_HE),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나이전 월평균 보건비용")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$CP_HE),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 월평균 보건비용")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$BC_MAPTC),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나이전 월평균 대중교통비용")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$CP_MAPTC),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 월평균 대중교통비용")


color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$BC_MM),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나이전 식사해결 방법")
color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$CP_MM),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 식사해결 방법")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$BC_PD),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 이전 자기계발 지출 영역")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$CP_PD),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 자기계발 지출 영역")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$ BC_MPC),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 이전 월평균 통신 비용")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$CP_MPC),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 월평균 통신 비용")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$ BC_HT),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 이전 주거형태")
color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$CP_HT),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 주거형태")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$ BC_CLA),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 이전 문화레저 영역")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$CP_CLA),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 문화레저 영역")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$ BC_OSS),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 이전 OTT 서비스 구독")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$CP_OSS),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나 팬데믹 OTT 서비스 구독")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #컬러 파레트
barplot(sort(table(target_$IOCB),
             decreasing = TRUE),
        col = color.palette,
        main = "코로나가 소비행태에 미친 영향도")
##-----------------------------------------------
##수정필요
ggplot(target_, aes(x = BC_MAI, fill = GRADE)) + geom_bar(position = "dodge")

##파이차트##
##성별##

##코로나 이전
pie(sort(table(target_$BC_MAI),
         decreasing = TRUE),
    radius = 1,
    main = "코로나 이전 월평균 수입")

##-----------------------------------------------
##change xhi - > fisher 카이제곱 검정
tti1<-xtabs(~ GRADE + BC_MAI, data = target_)
tti1
result1<- fisher.test(tti1,Finaltable,simulate.p.value = TRUE)
result1
##par(mfrow=c(1,1))

tti2<-xtabs(~ BC_MAI + CP_MAI, data = target_)
tti2
result2<- fisher.test(tti2,Finaltable,simulate.p.value = TRUE)
result2
tti3<-xtabs(~ BC_MAI + CP_MAI, data = target_)
tti3
result3<- fisher.test(tti3,Finaltable,simulate.p.value = TRUE)
result3
tti4<-xtabs(~ BC_SOI + CP_SOI, data = target_)
tti4
result4<- fisher.test(tti4,Finaltable,simulate.p.value = TRUE)
result4
tti5<-xtabs(~ BC_MAI + BC_SOI, data = target_)
tti5
result5<- fisher.test(tti5,Finaltable,simulate.p.value = TRUE)
result5
tti6<-xtabs(~ CP_MAI + CP_SOI, data = target_)
tti6
result6<- fisher.test(tti6,Finaltable,simulate.p.value = TRUE)
result6

tti7<-xtabs(~BC_MAE + CP_MAE, data = target_)
tti7
result7<- fisher.test(tti7,Finaltable,simulate.p.value = TRUE)
result7
tti8<-xtabs(~ BC_DF + CP_DF, data = target_)
tti8
result8<- fisher.test(tti8,Finaltable,simulate.p.value = TRUE)
result8

##범주형 데이터로 변환하는 코드
target_$SEX <-ifelse(target_$SEX=='남',1,
                    ifelse(target_$SEX=='여',0,as.integer())) #SEX 변수 숫자형으로 변환
target_$CP_MAI <-ifelse(target_$CP_MAI == "0 이상 20  미만",1,
                       ifelse(target_$CP_MAI == "20 이상 40 미만",2,
                              ifelse(target_$CP_MAI == "40 이상 60 미만",3,
                                     ifelse(target_$CP_MAI=="60 이상 80 미만",4,
                                            ifelse(target_$CP_MAI=="80 이상",5,as.numeric())))))


target_$BC_MAI <- ifelse(target_$BC_MAI == "0 이상 20  미만",1,
                        ifelse(target_$BC_MAI == "20 이상 40 미만",2,
                               ifelse(target_$BC_MAI == "40 이상 60 미만",3,
                                      ifelse(target_$BC_MAI=="60 이상 80 미만",4,
                                             ifelse(target_$BC_MAI=="80 이상",5,as.numeric())))))

#shapiro.test




##ANOVA
target_$BC_MAI <- factor(target_$BC_MAI, ordered = F)
result <- aov(CP_MAI ~ BC_MAI, data = target_)
result
summary(result)

##cross tab SPSS version
x<-target_$BC_MAI
y<-target_$CP_MAI
x;y
Result<-data.frame(BC_MAI=x,CP_MAI=y )
dim(Result)
table(Result)
install.packages("gmodels")
library(gmodels)
CrossTable(x,y)
CrossTable(x,y, chisq = TRUE, expected = TRUE, fisher = TRUE, format = c("SPSS"))