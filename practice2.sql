# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name

SELECT companyName, name
FROM Employee INNER JOIN Company on Employee.companyId = Company.id
WHERE (companyName, salary) IN
(SELECT companyName, MAX(salary) 
 FROM Employee INNER JOIN Company on Employee.companyId = Company.id 
 Group By Company.companyName);
