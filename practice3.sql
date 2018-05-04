#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary

SELECT companyName, AVG(salary) as avgSalary 
FROM Employee INNER JOIN Company on Employee.companyId = Company.id 
Group By Company.companyName 
Order by avgSalary Desc limit 1;
