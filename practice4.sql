# 找出薪水在公司的平均薪水之上的人员名字
# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal

SELECT e.id, e.name, e.age, e.gender, e.companyId, e.salary, c.companyName, temp2.avgSal
FROM Employee e INNER JOIN Company c on e.companyId = c.id,
(SELECT AVG(salary) as avgSal, companyName 
FROM Employee e1 INNER JOIN Company c1 on e1.companyId = c1.id 
Group By c1.companyName) temp2
WHERE e.salary > temp2.avgSal
AND c.companyName = temp2.companyName;
