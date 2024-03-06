#import data
LangdonDataset <- read_csv("LangdonDataset.csv")
CO3 <- LangdonDataset$CO3
G <- LangdonDataset$G
plot(CO3, G, pch=16, xlab= " [CO_3^2-](mu mol/kg of sweater) ", ylab="Clarification rate/(mmol CACO_3/m^2.day)",type="l" )
FalikDataset <- read_csv("FalikDataset.csv")
min(FalikDataset$width)
max(FalikDataset$width)
width <- FalikDataset$width 
plant <- FalikDataset$plant
barplot(width, names = plant, xlab= "Plant Number ", ylab="Stomatal Opening (mu)", col = c("blue", "red"))
control <- subset(FalikDataset, type == "control")
treatment <- subset(FalikDataset, type == "15min")
boxplot(control$width, treatment$width, names = c("control",
                                                  "treatment"), ylab
        = expression(paste("stomatal opening ( ", mu, "m")))

