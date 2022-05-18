install.packages("reader")
library(reader)

target <- read.csv(file = "C:/Users/user/Desktop/target.csv")
library(plyr)
##������ �����ϰ� ���� 
names(target) = c("SEX", "GRADE","BC_MAI","CP_MAI" ,"BC_SOI","CP_SOI","BC_MAE","CP_MAE","BC_DF","CP_DF","BC_MACE","CP_MACE","BC_SCI","CP_SCI","BC_HE","CP_HE","BC_MAPTC","CP_MAPTC","BC_MM","CP_MM","BC_PD","CP_PD","BC_MPC","CP_MPC","BC_HT","CP_HT","BC_CLA","CP_CLA","BC_OSS","CP_OSS","IOCB")
dim(target)
summary(target)
##ggplot package ��ġ
install.packages("ggplot2")
library(ggplot2)
par(family = "AppleGothic") ##mac os �ʼ�
summary(target)

### ������ ������ ������ ���� ��ȯ 
target$SEX <-ifelse(target$SEX=='��',1,
                    ifelse(target$SEX=='��',0,as.integer())) #SEX ���� ���������� ��ȯ
target$CP_MAI <-ifelse(target$CP_MAI == "0 �̻� 20  �̸�",1,
                       ifelse(target$CP_MAI == "20 �̻� 40 �̸�",2,
                              ifelse(target$CP_MAI == "40 �̻� 60 �̸�",3,
                                     ifelse(target$CP_MAI=="60 �̻� 80 �̸�",4,
                                            ifelse(target$CP_MAI=="80 �̻�",5,as.numeric())))))


target$BC_MAI <- ifelse(target$BC_MAI == "0 �̻� 20  �̸�",1,
                        ifelse(target$BC_MAI == "20 �̻� 40 �̸�",2,
                               ifelse(target$BC_MAI == "40 �̻� 60 �̸�",3,
                                      ifelse(target$BC_MAI=="60 �̻� 80 �̸�",4,
                                             ifelse(target$BC_MAI=="80 �̻�",5,as.numeric())))))
##������ ������ �ڵ� ��ȯ ���� ��------

summary(target) ##���캸�� ��������
count(target)
target$CP_MAI ##���� ���캸��
table(target$BC_MAI)

#���÷�

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$SEX),
             decreasing = TRUE),
        col = color.palette,
        main = "����")


color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$GRADE),
             decreasing = TRUE),
        col = color.palette,
        main = "�г�")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$BC_MAI),
             decreasing = TRUE),
        col = color.palette,
        ylab = "Freqeuency",
        xlab = "(����)",
        ylim = c(0,50),
        main = "�ڷγ� ���� ����� ����")


color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$CP_MAI),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� �ҵ��� ����� ����")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$BC_SOI),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� ���� ���Կ�")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$CP_SOI),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� �ҵ��� ���Կ�")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$BC_MAE),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ����� ������")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$CP_MAE),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� �ҵ��� ������")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$BC_DF),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ����� ���ֺ�")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$CP_DF),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� �ҵ��� ���ֺ�")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$BC_MACE),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ����� ����� �Ǻ�����")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$CP_MACE),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� �ҵ��� ����� �Ǻ�����")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$BC_SCI),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ����� ��ٱ��� ��ǰ")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$CP_SCI),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� �ҵ��� ��ٱ��� ��ǰ")
color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$BC_SCI),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ����� ��ٱ��� ��ǰ")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$CP_SCI),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� �ҵ��� ��ٱ��� ��ǰ")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$BC_HE),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ����� ����� ���Ǻ��")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$CP_HE),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� �ҵ��� ����� ���Ǻ��")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$BC_MAPTC),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ����� ����� ���߱�����")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$CP_MAPTC),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� �ҵ��� ����� ���߱�����")


color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$BC_MM),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ����� �Ļ��ذ� ���")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$CP_MM),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� �ҵ��� �Ļ��ذ� ���")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$BC_PD),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� ���� �ڱ��� ���� ����")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$CP_PD),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� �ҵ��� �ڱ��� ���� ����")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$ BC_MPC),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� ���� ����� ��� ���")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$CP_MPC),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� �ҵ��� ����� ��� ���")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$ BC_HT),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� ���� �ְ�����")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$CP_HT),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� �ҵ��� �ְ�����")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$ BC_CLA),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� ���� ��ȭ���� ����")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$CP_CLA),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� �ҵ��� ��ȭ���� ����")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$ BC_OSS),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� ���� OTT ���� ����")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$CP_OSS),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ� �ҵ��� OTT ���� ����")

color.palette <- RColorBrewer::brewer.pal(n=5, name= 'BuGn') #�÷� �ķ�Ʈ
barplot(sort(table(target$IOCB),
             decreasing = TRUE),
        col = color.palette,
        main = "�ڷγ��� �Һ����¿� ��ģ ���⵵")

##-----------------------------------------------
##�����ʿ�
ggplot(target, aes(x = BC_MAI, fill = GRADE)) + geom_bar(position = "dodge")

##������Ʈ##
##����##

##�ڷγ� ����
pie(sort(table(target$BC_MAI),
         decreasing = TRUE),
    radius = 1,
    main = "�ڷγ� ���� ����� ����")

##-----------------------------------------------
##change xhi - > fisher ī������ ����
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

##ANOVA
target$GRADE <- factor(target$GRADE, ordered = F)
result <- aov(BC_MAI ~ GRADE, data = target)
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