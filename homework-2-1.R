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


# 1. # 查找tidyverse包是否已安装，如果没有安装，则安装tidyverse包
!requireNamespace("tidyverse") 
  
# 2. 安装tidyverse包
install.packages("tidyverse")

# 3. 加载tidyverse包
library(tidyverse)

# 4. 查看已安装的tidyverse包信息
packageDescription("tidyverse")

# 5. 查看tidyverse包含的所有子包
tidyverse_packages()

