# HEADER --------------------------------------------
#
# Author:     Name Surname
# Copyright     Copyright 2025 - Name Surname
# Email:      xiaof947172@163.com
#
# Date:     2025-03-17
#
# Script Name:    
#
# Script Description:写一段R脚本，自定义一个函数，检查随机向量rnorm(n = 10, mean= 35, sd = 10）中的每个值是否高于阈值35（可以用for循环，也可用apply()家族）。
#
#
# SETUP ------------------------------------
cat("\014")                 # Clears the console
rm(list = ls())             # Remove all variables of the work space
# 定义函数，使用 for 循环检查每个值是否高于阈值 35
check_threshold_for <- function(vec, threshold = 35) {
  result <- vector("logical", length(vec))  # 预分配逻辑向量
  for (i in seq_along(vec)) {
    result[i] <- vec[i] > threshold
  }
  return(result)
}
check_threshold_sapply <- function(vec, threshold = 35) {
  sapply(vec, function(x) x > threshold)  # 使用 sapply() 进行判断
}
set.seed(123)  # 设置随机种子，确保结果可复现
random_vec <- rnorm(n = 10, mean = 35, sd = 10)

# 调用函数并输出结果
print("Using for loop:")
print(check_threshold_for(random_vec))

print("Using sapply():")
print(check_threshold_sapply(random_vec))


