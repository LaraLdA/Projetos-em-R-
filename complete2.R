complete2 <- function(directory, id = 1:332){
    
    directory <- setwd("C:\\Users\\la-re\\Downloads\\rprog_data_specdata\\specdata")
    
    files_full <- list.files(directory, full.names = TRUE) 
    dat <- data.frame() # data frame vazio para fazer o rbind
    
    for (i in id)
    {
        # le os arquivos
        data <- read.csv(files_full[i])
        # nobs é a soma dos casos completos 
        nobs <-sum(complete.cases(data)) #sem valores faltando
        # Enumera os casos completos
        dat <-rbind(dat, data.frame(i, nobs))
        
    }
    colnames(dat) <- c("Monitor (id)", "nobs") #da nome as colunas
    return(dat)  
}