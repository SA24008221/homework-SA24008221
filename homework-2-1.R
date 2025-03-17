# HEADER --------------------------------------------
#
# Author:     郑晓飞
# Copyright     Copyright 2025 - Name Surname
# Email:      xiaof947172@163,com
#
# Date:     2025-03-17
#
# Script Name: homework-2-1   
#
# Script Description:在RStudio中开启R script新文件，通过CRAN库安装tidyverse包，按照规范，写一段代码，完成查找包、安装包和查看包
#
#
# SETUP ------------------------------------
cat("\014")                 # Clears the console
rm(list = ls())             # Remove all variables of the work space
tidyverse_info <- available.packages()["tidyverse", ]
print("tidyverse 包的信息：")
print(tidyverse_info)
if (!require("tidyverse")) {
  install.packages("tidyverse", dependencies = TRUE)  # 安装 tidyverse 及其依赖包
  print("tidyverse 包安装完成！")
} else {
  print("tidyverse 包已安装。")
}
