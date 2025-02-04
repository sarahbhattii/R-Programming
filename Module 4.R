#Module 4 R Programming

Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA,1)
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
FinalDecision <- c(0, 1, 0, 1, 0 , 1, 0, 1, 1, 1)


PatientData <- data.frame(Frequency, BP, First, Second, FinalDecision)

FirstAssessmentBoxplot <- boxplot(BP ~ First, PatientData,
                                  main = "First Assessment by Doctor",
                                  xlab = "First Assessment",
                                  ylab = "Blood Pressure")

SecondAssessmentBoxplot <- boxplot(BP ~ Second, PatientData,
                                   main = "Second Assessment by Doctor",
                                   xlab = "Second Assessment",
                                   ylab = "Blood Pressure")

ThirdAssessmentBoxplot <- boxplot(BP ~ FinalDecision, PatientData,
                              main = "Final Assessment by Head Emergency Unit",
                              xlab = "Final Assessment",
                              ylab = "Blood Pressure")

PatientHistogram <- hist(PatientData$BP, 
                         main = "Patient Blood Pressure",
                         xlab = "Blood Pressure",
                         ylab = "Hospital Frequency of Visits")
