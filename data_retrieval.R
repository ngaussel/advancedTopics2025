library(yfR)

tickers <- c("SPXS","SPY","SPXL","SPXN")

dataRaw <- yf_get(tickers= tickers,first_date = "2010-12-31" |> as.Date()) 
write.csv(dataRaw,"project_raw_data.csv",row.names = FALSE)
