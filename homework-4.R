
# HEADER --------------------------------------------
#
# Author:     郑晓飞

# Email:      xiaof947172@163.com
#
# Date:     2025-04-7
#
# Script Name: homework-4-R   

# SETUP ------------------------------------

#Exercise-1

library(ade4)  # 加载ade4包
library(dplyr) # 加载dplyr包
data("doubs")  # 导入doubs数据集
str(doubs)     # 查看数据结构
env_data <- doubs$env   #读取数据集中的env
env_data
result <- env_data |>   # 数据处理
select(dfs, alt, oxy,pH) |>   # 选取 dfs, alt, oxy 列
rename(distance = dfs, oxygen = oxy) |>   # 重命名列
filter(alt > 200) |>   # 保留alt大于200米的行
arrange(desc(alt)) |>  # 按alt降序排列
mutate(oxygen_category = ifelse(oxygen > 90, "high", "low")) |> # 新增oxygen_category列
group_by(oxygen_category) |>   # 分组计算
summarise(
  mean_alt = mean(alt),
  mean_pH = mean(pH)
)
print(result)  # 查看结果
    
#Exercise-2

library(ggplot2)  # 加载ggplot2包
ggplot(data = env_data) +
geom_point(mapping = aes(x = alt, y = oxy))# 基础散点图：oxy ~ alt

ggplot(data = env_data) +
geom_point(mapping = aes(x = alt, y = oxy, color = dfs))  # 添加颜色映射的散点图：用dfs距离调整颜色  
 
    
    
    
    
    
    
    
    
    