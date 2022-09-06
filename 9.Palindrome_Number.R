isPalindrome <- function(x){
    x <- strsplit(as.character(x),split="")
    if (length(x[[1]])%%2==0){
        return(FALSE)
    }else {
        # length(x[[1]])%/%2+1
        for (i in 1:(length(x[[1]])%/%2)) {
            last = length(x[[1]])-(i-1)
           if (x[[1]][i]==x[[1]][last]){
            return(TRUE)
           }else {
            return(FALSE)
           }
        }
    }
}

x = 121
x = -121
x = 11  # wrong answer
x=100011 # wrong answer

isPalindrome(x)

### 

isPalindrome <- function(x){
    x <- strsplit(as.character(x),split="")
    len <- length(x[[1]])
    if (len==1){
        return(TRUE)
    }
    if (len%%2==0){
        half_x <- x[[1]][1:((len-len%/%2))]
        rev_x <- rev(x[[1]][((len-len%/%2)+1):len])
        if (all(strtoi(rev_x)==strtoi(half_x))){
            return(TRUE)
        }else {
           return(FALSE)
        }
    }else {
        half_x <- x[[1]][1:((len-len%/%2)-1)]
        rev_x <- rev(x[[1]][((len-len%/%2)+1):len])
        if (all(strtoi(rev_x)==strtoi(half_x))){
            return(TRUE)
        }else {
           return(FALSE)
        }
    }
}

paste0(c(rev_x))

