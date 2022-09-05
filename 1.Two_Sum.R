twoSum <- function(nums,target){
for (i in 1:length(nums)) {
    for (j in 1:length(nums)) {
          if(nums[i]+nums[j]==target){
            result <- c(i,j)
     return(result)
    }
   }
}
}



nums <- c(2,7,11,15)
target <- 9

twoSum <- function(nums,target){  
for (i in 1:length(nums)) {
    j <- which( nums==target-nums[i])
    result <- c(i,j)
    return(result)
}
}



twoSum(nums,target)
