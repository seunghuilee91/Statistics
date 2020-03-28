
# 알릴레오 #73 회귀분석 01
# 어떤 양적자료가 다른 양적자료에 통계적으로 유의한 영향을 주는지 분석하는 것. 회귀분석을 인과관계, 즉 원인과 결과의 과계가 있는지 분석한다. 예측의 가장 기본이 되고, 가장 많이 사용하는 분석 방법 중의 하나이다. 
# 데이터를 가장 ??? 설명하는 직선이 어떤 것인지 찾아내는 것! 
# 분류에도 쓰이긴 하지만, 예측이 주!
# 회귀모형(REGRESSION MODEL)
# Yi = B0(intercept) + b1(slope)*Xi + Ei(error)r-
#    - 질적 자료 = 범주형 자료 => 분류
#    - 양적 자료 = 수치형 자료 => 예측  (회귀분석)

# #78 ???순선형 회귀분석 실습 
# simple linear regression analysis

# Y : 종속변수 = 반응변수 = Label   1개
# X : 독립변수 = 설명변수 = Feature 1개 

# result <- lm(formuala = y  ~ x, data = )
# summary(result)

# 예제 데이터 : cars 
head(cars)
result <- lm(dist ~ ?peed, cars)
result  
summary(result)
plot(result)

# 단순선형 회귀분석의 해석
# 1단계 : 회귀모형은 타당한가?
#  귀무가설 : 회귀모형은 타당하지 않다.  Ho
#  대립가설 : 회귀모형은 타당하다.       H1

# 무엇을 보아야 하는가?
# F-statistic: 89.57 on 1 and 48 D?,  p-value: 1.49e-12
# 결론 : 유의확률이 0.000 이므로 유의수준 0.05에서
# 회귀모형은 통계적으로 매우 유의한 것으로 나타났다.

# 2단게 : 독립변수는 종속변수에게 영향을 주는가?
#  귀무가설 : 독립변수는 종속변수에게 영향 주지 않는다.  Ho
#  대립가설 : 독립변???는 종속변수에게 영향 준다.         H1

# Coefficients:
 #              Estimate Std. Error t value Pr(>|t|)    
 # speed         3.9324     0.4155   9.464 1.49e-12 ***
