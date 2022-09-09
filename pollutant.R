# pollutantmean

pollutantmedia <- function(directory, pollutant, id = 1:332){
    directory <- setwd("C:\\Users\\la-re\\Downloads\\rprog_data_specdata\\specdata")
    
    files_full <- list.files(directory, full.names = TRUE) # anexa o caminho ao nome do arquivo 
    dat <- data.frame() # data frame vazio para fazer o rbind
    for (i in id){
        
        dat<-rbind(dat, read.csv(files_full[i]))
    }
    
    mean<- mean(dat[, pollutant], na.rm = TRUE)
    return (mean)
}
#resultados
#> pollutantmean(specdata, "nitrate", 1:10)
#[1] 0.7976266 
#> pollutantmean(specdata, "sulfate", 1:10)
#[1] 4.064128
#> pollutantmean(specdata, "nitrate", 70:72)
#[1] 1.706047

