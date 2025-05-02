# 📈 Top 5 U.S. Companies by Market Capitalization (1960–2024)

This project visualizes the changing landscape of corporate dominance in the U.S. using an **alluvial chart** that tracks the **top 5 companies by market cap** from 1960 to 2024.

## 📊 What It Shows
- How companies like **IBM**, **ExxonMobil**, **GE**, **Microsoft**, **Apple**, and others rose to the top
- How **sector leadership shifted** — from industrials and energy to tech
- Duration and persistence of each company in the top 5

## 🔧 Built With
- **R** and the following libraries:
  - `ggplot2` for plotting
  - `ggalluvial` for the flow chart
  - `dplyr` for data wrangling
  - `showtext` for clean Google Fonts (optional)
  
## 📁 Files
top5-marketcap-alluvial/
├── alluvial_chart.R # Main script
├── plots/top5_alluvial.png # Output image
├── data/ # (Optional) CSV input
└── README.md # You're reading it

## 🖼️ Sample Chart

![Alluvial Chart](plots/top5_alluvial.png)

## 🧪 To Reproduce
1. Clone this repo  
2. Open `alluvial_chart.R` in RStudio  
3. Install required packages:  
   ```r
   install.packages(c("ggplot2", "ggalluvial", "dplyr", "showtext"))
Data Source (Manual Compilation)
Visual Capitalist

Macrotrends

Finhacker.cz

Historical S&P 500 composition

Company market cap archives (YCharts, WSJ, Bloomberg)
