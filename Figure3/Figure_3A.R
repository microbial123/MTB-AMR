rm(list=ls())

library(ggplot2)

dataRIF <- data.frame(
  Group = rep(c("Training Dataset", "Validation Dataset"), each = 2),
  Category = rep(c("Resistant Isolate", "Susceptible Isolate"), times = 2),
  Percentage = c(29, 71, 80, 20)
)

dataINH <- data.frame(
  Group = rep(c("Training Dataset", "Validation Dataset"), each = 2),
  Category = rep(c("Resistant Isolate", "Susceptible Isolate"), times = 2),
  Percentage = c(35, 65, 89, 11)
)




library(export)
p1 <- ggplot(dataRIF, aes(x = Group, y = Percentage, fill = Category)) +
  geom_bar(stat = "identity", position = "stack") +
  scale_fill_manual(values = c("IndianRed1", "Turquoise")) +
  labs(y = "Percentage (%)") +
  theme_bw() +
  theme( panel.border = element_blank(),
         panel.grid.major = element_blank(), 
         panel.grid.minor = element_blank(),
         axis.line = element_line(colour = "black") ,
         axis.text = element_text(color = "black", face = "bold"), 
         axis.title.x = element_blank(), 
         axis.text.y = element_text(face = "bold", color = "black"),
         legend.position = "bottom", 
         legend.text = element_text(face = "bold", color = "black")) +
  geom_text(aes(label = paste0(Percentage, "%")), position = position_stack(vjust = 0.5), size = 4)
p1
graph2ppt(file="Figure3ARIF.pptx", width=7, height=5)



p2 <- ggplot(dataINH, aes(x = Group, y = Percentage, fill = Category)) +
  geom_bar(stat = "identity", position = "stack") +
  scale_fill_manual(values = c("IndianRed1", "Turquoise")) +
  labs(y = "Percentage (%)") +
  theme_bw() +
  theme( panel.border = element_blank(),
         panel.grid.major = element_blank(), 
         panel.grid.minor = element_blank(),
         axis.line = element_line(colour = "black") ,
         axis.text = element_text(color = "black", face = "bold"), 
         axis.title.x = element_blank(), 
         axis.text.y = element_text(face = "bold", color = "black"),
         legend.position = "bottom", 
         legend.text = element_text(face = "bold", color = "black")) +
  geom_text(aes(label = paste0(Percentage, "%")), position = position_stack(vjust = 0.5), size = 4)
p2
graph2ppt(file="Figure3AINH.pptx", width=7, height=5)


