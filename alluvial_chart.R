# Install necessary packages
install.packages(c("ggplot2", "ggalluvial", "dplyr", "showtext"))
library(ggplot2)
library(ggalluvial)
library(dplyr)
library(showtext)

# Add Google font for cleaner labels
font_add_google("Inter", "inter")  # You can also try "Lato" or "Roboto"
showtext_auto()

# Sample data (you would replace this with full top 5 per year)
data <- data.frame(
  Year = rep(c(1960, 1970, 1980, 1990, 2000, 2010, 2020), each = 5),
  Rank = rep(1:5, times = 7),
  Company = c(
    "General Motors", "ExxonMobil", "U.S. Steel", "General Electric", "Esmark",
    "General Motors", "ExxonMobil", "Ford Motor", "General Electric", "IBM",
    "ExxonMobil", "General Motors", "Mobil", "Ford Motor", "Texaco",
    "General Motors", "Ford Motor", "ExxonMobil", "IBM", "General Electric",
    "Wal-Mart", "ExxonMobil", "Chevron", "General Electric", "Bank of America",
    "Apple", "Microsoft", "Amazon", "Alphabet", "Facebook",
    "Apple", "Microsoft", "Amazon", "Alphabet", "Nvidia"
  ),
  Sector = c(
    "Automotive", "Energy", "Metals", "Conglomerate", "Conglomerate",
    "Automotive", "Energy", "Automotive", "Conglomerate", "Technology",
    "Energy", "Automotive", "Energy", "Automotive", "Energy",
    "Automotive", "Automotive", "Energy", "Technology", "Conglomerate",
    "Retail", "Energy", "Energy", "Conglomerate", "Finance",
    "Technology", "Technology", "Technology", "Technology", "Technology",
    "Technology", "Technology", "Technology", "Technology", "Technology"
  )
)

# Beautified alluvial plot
ggplot(data,
       aes(x = Year, stratum = Company, alluvium = Company,
           y = Rank, fill = Sector, label = Company)) +
  geom_flow(stat = "alluvium", lode.guidance = "frontback", color = "gray60", alpha = 0.85) +
  geom_stratum(aes(fill = Sector), color = "gray30") +
  geom_text(stat = "stratum", size = 3.5, color = "black", family = "inter", fontface = "bold") +
  scale_fill_brewer(type = "qual", palette = "Set3") +
  scale_y_reverse(breaks = 1:5) +  # Rank 1 on top
  theme_minimal(base_size = 14, base_family = "inter") +
  theme(
    legend.position = "right",
    plot.title = element_text(face = "bold", size = 18, family = "inter"),
    plot.subtitle = element_text(size = 13, family = "inter", color = "gray40"),
    axis.text.x = element_text(face = "bold"),
    axis.text.y = element_text(face = "bold"),
    panel.grid.major.y = element_line(color = "gray90"),
    panel.grid.major.x = element_blank()
  ) +
  labs(
    title = "Top 5 U.S. Companies by Market Capitalization (1960–2024)",
    subtitle = "Alluvial chart showing how market cap leaders rose and fell over time",
    x = "Year",
    y = "Market Cap Rank (1 = top)",
    fill = "Sector"
  )
