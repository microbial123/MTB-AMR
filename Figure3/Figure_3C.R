
library(ggplot2)
library(scales)  # percent() 
dataRIF <- data.frame(
  Metric = c("Accuracy", "Precision", "Recall"),
  Value = c(90.96, 99.17, 89.47)
)

dataINH <- data.frame(
  Metric = c("Accuracy", "Precision", "Recall"),
  Value = c(91.57, 96.53, 93.92)
)

#Figure 2 RIF 
golden_color <- "#FFD700"
dataRIF_performance <- ggplot(dataRIF, aes(x = Metric, y = Value, fill = golden_color)) +
  geom_bar(stat = "identity", color = "black", fill = golden_color)  +
  geom_text(aes(label = paste0(Value, "%")), vjust = -0.5) + 
  scale_y_continuous(name = "Percentage (%)") + 
  theme_bw() +
  theme( panel.border = element_blank(),
         panel.grid.major = element_blank(), 
         panel.grid.minor = element_blank(),
         axis.line = element_line(colour = "black") ,
         axis.text = element_text(color = "black", face = "bold"), 
         axis.title.x = element_blank(),
         axis.title.y = element_text(face = "bold", color = "black"),  
         axis.text.y = element_text(face = "bold", color = "black"),
         legend.text = element_text(face = "bold", color = "black"),
         legend.position = "none")
dataRIF_performance 

#Figure 3 INH
blue_color <- "#4682B4"
dataINH_performance <- ggplot(dataINH, aes(x = Metric, y = Value, fill = blue_color)) +
  geom_bar(stat = "identity", color = "black", fill = blue_color)  +
  geom_text(aes(label = paste0(Value, "%")), vjust = -0.5) + 
  scale_y_continuous(name = "Percentage (%)") + 
  theme_bw() +
  theme( panel.border = element_blank(),
         panel.grid.major = element_blank(), 
         panel.grid.minor = element_blank(),
         axis.line = element_line(colour = "black") ,
         axis.text = element_text(color = "black", face = "bold"), 
         axis.title.x = element_blank(),
         axis.title.y = element_text(face = "bold", color = "black"), 
         axis.text.y = element_text(face = "bold", color = "black"),
         legend.text = element_text(face = "bold", color = "black"),
         legend.position = "none")

dataINH_performance 
