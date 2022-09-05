romanToInt <- function(s){
    s_split <- strsplit(s,split="")
        int_I <- sum(s_split[[1]]=="I")*1
        int_V <- sum(s_split[[1]]=="V")*5
        int_X <- sum(s_split[[1]]=="X")*10
        int_L <- sum(s_split[[1]]=="L")*50
        int_C <- sum(s_split[[1]]=="C")*100
        int_D <- sum(s_split[[1]]=="D")*500
        int_M <- sum(s_split[[1]]=="M")*1000
        int <- sum(int_I,int_V,int_X,int_L,int_C,int_D,int_M)
        return(int)
}

s <- "III"
s <- "LVIII"
s <= "MCMXCIV" ## wrong answer

romanToInt(s)

#####
romanToInt <- function(s){
    roman <- list(
        I=1, V=5, X=10, L=50,
        C=100, D=500, M=1000)
    s <- gsub("IV","IIII",s)
    s <- gsub("IX","VIIII",s)
    s <- gsub("XL","XXXX",s)
    s <- gsub("XC","LXXXX",s)
    s <- gsub("CD","CCCC",s)
    s <- gsub("CM","DCCCC",s)
    s_split <- strsplit(s,split="")
    int=0
    for(i in 1:length(s_split[[1]])){
        rom <- s_split[[1]][i]
        int <- int+as.numeric(roman[rom][[1]])
    }
    return(int)
}

s <- "III"
s <- "LVIII"
s <- "MCMXCIV"

romanToInt(s)
