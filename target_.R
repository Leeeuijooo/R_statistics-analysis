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
par(family = "AppleGothic") ##mac os 필수

summary(target_) ##살펴보는 목적으로
count(target_)
target_$CP_MAI ##변수 살펴보기
##pie chart 이거로
par(mfrow = c(1, 1)) ## 그래프 나누는 함수

par(family = "AppleGothic")
table(target_$SEX)
freq_SEX<-xtabs(~SEX, data = target_);
freq_SEX
SEXLabels <- paste0(names(freq_SEX), " ", round(proportions(freq_SEX) * 100, digits=2),"%")
pie(freq_SEX, label = SEXLabels, main = "성별")

par(family = "AppleGothic")
table(target_$GRADE)
freq_GRADE<-xtabs(~GRADE, data = target_);
freq_GRADE
GRADELabels <- paste0(names(freq_GRADE), "학년  ", round(proportions(freq_GRADE) * 100, digits=2),"%")
pie(freq_GRADE, label = GRADELabels, main = "학년")


par(family = "AppleGothic")
table(target_$BC_MAI)
freq_BC_MAI<-xtabs(~BC_MAI, data = target_);
freq_BC_MAI
BC_MAILabels <- paste0(names(freq_BC_MAI), " ", round(proportions(freq_BC_MAI) * 100, digits=2),"%")
pie(freq_BC_MAI, label = BC_MAILabels, main = "코로나 이전 월평균 수입")

par(family = "AppleGothic")
table(target_$CP_MAI)
freq_CP_MAI<-xtabs(~CP_MAI, data = target_);
freq_CP_MAI
CP_MAILabels <- paste0(names(freq_CP_MAI), " ", round(proportions(freq_CP_MAI) * 100, digits=2),"%")
pie(freq_CP_MAI, label = CP_MAILabels, main = "코로나 팬데믹 월평균 수입")

table(target_$BC_SOI)
freq_BC_SOI<-xtabs(~BC_SOI, data = target_);
freq_BC_SOI
BC_SOILabels <- paste0(names(freq_BC_SOI), " ", round(proportions(freq_BC_SOI) * 100, digits=2),"%")
pie(freq_BC_SOI, label = BC_SOILabels, main = "코로나 이전 수입원")

table(target_$CP_SOI)
freq_CP_SOI<-xtabs(~CP_SOI, data = target_);
freq_CP_SOI
CP_SOILabels <- paste0(names(freq_CP_SOI), " ", round(proportions(freq_CP_SOI) * 100, digits=2),"%")
pie(freq_CP_SOI, label = CP_SOILabels, main = "코로나 팬데믹 수입원")

table(target_$BC_MAE)
freq_BC_MAE<-xtabs(~BC_MAE, data = target_);
freq_BC_MAE
BC_MAELabels <- paste0(names(freq_BC_MAE), " ", round(proportions(freq_BC_MAE) * 100, digits=2),"%")
pie(freq_BC_MAE, label = BC_MAELabels, main = "코로나 이전 평균 지출 비용")

table(target_$CP_MAE)
freq_CP_MAE<-xtabs(~CP_MAE, data = target_);
freq_CP_MAE
CP_MAELabels <- paste0(names(freq_CP_MAE), " ", round(proportions(freq_CP_MAE) * 100, digits=2),"%")
pie(freq_CP_MAE, label = CP_MAELabels, main = "코로나 팬데믹 평균 지출 비용")

table(target_$BC_DF)
freq_BC_DF<-xtabs(~BC_DF, data = target_);
freq_BC_DF
BC_DFLabels <- paste0(names(freq_BC_DF), " ", round(proportions(freq_BC_DF) * 100, digits=2),"%")
pie(freq_BC_DF, label = BC_DFLabels, main = "코로나 이전 음주 빈도")

table(target_$CP_DF)
freq_CP_DF<-xtabs(~CP_DF, data = target_);
freq_CP_DF
CP_DFLabels <- paste0(names(freq_CP_DF), " ", round(proportions(freq_CP_DF) * 100, digits=2),"%")
pie(freq_CP_DF, label = CP_DFLabels, main = "코로나 팬데믹 음주 빈도")

table(target_$BC_MACE)
freq_BC_MACE<-xtabs(~BC_MACE, data = target_);
freq_BC_MACE
BC_MACELabels <- paste0(names(freq_BC_MACE), " ", round(proportions(freq_BC_MACE) * 100, digits=2),"%")
pie(freq_BC_MACE, label = BC_MACELabels, main = "코로나 이전 월평균 의복 지출 개수")

table(target_$CP_MACE)
freq_CP_MACE<-xtabs(~CP_MACE, data = target_);
freq_CP_MACE
CP_MACELabels <- paste0(names(freq_CP_MACE), " ", round(proportions(freq_CP_MACE) * 100, digits=2),"%")
pie(freq_CP_MACE, label = CP_MACELabels, main = "코로나 팬데믹 월평균 의복 지출 개수")

table(target_$BC_SCI)
freq_BC_SCI<-xtabs(~BC_SCI, data = target_);
freq_BC_SCI
BC_SCILabels <- paste0(names(freq_BC_SCI), " ", round(proportions(freq_BC_SCI) * 100, digits=2),"%")
pie(freq_BC_SCI, label = BC_SCILabels, main = "코로나 이전 장바구니 물품 개수")

table(target_$CP_SCI)
freq_CP_SCI<-xtabs(~CP_SCI, data = target_);
freq_CP_SCI
CP_SCILabels <- paste0(names(freq_CP_SCI), " ", round(proportions(freq_CP_SCI) * 100, digits=2),"%")
pie(freq_CP_SCI, label = CP_SCILabels, main = "코로나 팬데믹 장바구니 물품 개수")


##-----------------------------------------------




##-----------------------------------------------
##change xhi - > fisher 카이제곱 검정
tti1<-xtabs(~ BC_MAI + SEX, data = target_)
tti1
result1<- fisher.test(tti1,Finaltable,simulate.p.value = TRUE)
result1
##par(mfrow=c(1,1))

tti2<-xtabs(~ BC_MAI + GRADE, data = target_)
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

tti9<-xtabs(~ BC_MACE + CP_MACE, data = target_)
tti9
result9<- fisher.test(tti9,Finaltable,simulate.p.value = TRUE)
result9
tti10<-xtabs(~ BC_SCI + CP_SCI, data = target_)
tti10
result10<- fisher.test(tti10,Finaltable,simulate.p.value = TRUE)
result10
tti11<-xtabs(~ BC_HE + CP_DF, data = target_)
tti11
result11<- fisher.test(tti11,Finaltable,simulate.p.value = TRUE)
result11



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


##등분산성 검정
install.packages("lawstat")
library(lawstat)
levene.test(target_$BC_MAI, target_$CP_MAI)
levene.test(target_$BC_MAE,target_$CP_MAE)
levene.test(target_$BC_DF,target_$CP_DF)
levene.test(target_$CP_DF,target_$GRADE)

##t-test
shapiro.test(target_$BC_DF)
shapiro.test(target_$CP_DF)
shapiro.test(target_$BC_MAI)
shapiro.test(target_$CP_MAI)
shapiro.test(target_$BC_MAE)
shapiro.test(target_$CP_MAE)
shapiro.test(target_$BC_MACE)
shapiro.test(target_$CP_MACE)
shapiro.test(target_$BC_SCI)
shapiro.test(target_$CP_SCI)
shapiro.test(target_$CP_MACE)
shapiro.test(target_$CP_MACE)

##등분산성 검정
var.test(target_$BC_DF,target_$CP_DF) 
##대응표본 t 검정
t.test(target_$BC_OSS,target_$CP_OSS, paired = T)

##ANOVA
target_$BC_MAI <- factor(target_$BC_MAI, ordered = F)
result <- aov(CP_MAI ~ BC_MAI, data = target_)
result
summary(result)

##ANOVA
aov(BC_MAI~GRADE, target_)
summary(aov(BC_MAI~GRADE, target_))

target_$GRADE <- factor(target_$GRADE, ordered = F)
result <- aov(CP_MAE ~ GRADE, data = target_)
result
anova(result)
TukeyHSD(result)
shapiro.test(result$residuals)
bartlett.test(CP_MAE ~ GRADE, data = target_)
plot(result, which=1:3)
##이원분류 분산분석
result_BC <- aov(BC_MAI ~ GRADE, data = target_)
anova(result_supp)

result_CP <- aov(CP_MAI ~ GRADE, data = target_)
anova(result_supp)

result_both <- aov(BC_MAI ~ GRADE *CP_MAI, data = target_)
anova(result_both)




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