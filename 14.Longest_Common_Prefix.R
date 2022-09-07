longestCommonPrefix <- function(strs) {
    strs <- unlist(strs)
    s1 <- strsplit(strs[1],"")
    for (i in 2:length(strs)) {
       s <- strsplit(strs[i],"")
       inter <- intersect(s1[[1]],s[[1]])
       s1[[1]] <- inter
    }
    # inter <- Reduce(intersect, list())
    if (all(inter=="0")==TRUE) {
    return("")
    }else {
       return(inter)
    }
}

strs <- list("flower","flow","flight")
strs <- list("dog","racecar","car")
strs <- list("a")
strs <- list("")
longestCommonPrefix(strs)



longestCommonPrefix <- function(strs) {
    if (length(strs)<=1) {
       return(strs[[1]])
    }else {

    strs <- unlist(strs)
    s1 <- strsplit(strs[1],"")
    for (i in 2:length(strs)) {
       s <- strsplit(strs[i],"")
       inter <- c()
       for (j in 1:min(length(s1[[1]]),length(s[[1]]))) {
          if (s1[[1]][j]==s[[1]][j]) {
            inter <- c(inter,s1[[1]][j])
          }else{
            break
          }
       }
        if (length(inter)>0) {
            s1[[1]] <- inter
        }else {
           return("")
        }
    }
    return(inter)
           
    }
}





