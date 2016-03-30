pollutantmean <- function(directory, pollutant, id = 1:332) {
  for (i in id) {
    if (nchar(i) == 1)
      i <- paste0('00', i)
    if (nchar(i) == 2)
      i <- paste0('0', i)
  
  if (i == 1) {
    df <- read.csv(paste0(directory, i, '.csv'))
  }
    else df <- rbind(df, read.csv(paste0(directory, i, '.csv')))
  }
  if(pollutant == 'sulfate') {
    pollutant.mean <- mean(df$sulfate, na.rm = T)
  }
  else pollutant.mean <- mean(df$nitrate, na.rm = T)
  print(pollutant.mean)
}
pollutantmean("~/Documents/Coursera/R_Programming/specdata/", 
              'sulfate', 1:10)
pollutantmean("~/Documents/Coursera/R_Programming/specdata/", 
              'nitrate', 70:72)
pollutantmean("~/Documents/Coursera/R_Programming/specdata/", 
              'nitrate', 23)
complete.cases.6 <- complete.cases(df)
complete.cases.6 <- df[complete.cases.6,]
head(complete.cases.6)
