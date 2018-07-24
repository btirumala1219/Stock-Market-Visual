# Get quantmod
if (!require("quantmod")) {
    install.packages("quantmod")
    library(quantmod)
}

start <- as.Date("2017-01-01")
end <- as.Date("2017-10-01")

getSymbols("AAPL", src = "yahoo", from = start, to = end)
plot(AAPL[, "AAPL.Close"], main = "AAPL")
candleChart(AAPL, up.col = "black", dn.col = "red", theme = "white")

# Candle chart is a quant version interpretation graph