/*
Problem Statement:
    Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy:
    Founder -> Lead Manager -> Senior Manager -> Manager -> Employee

    Write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.
    Note:
        The tables may contain duplicate records.
        The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.
    
Hackerrank Link: 
    https://www.hackerrank.com/challenges/the-company/problem
*/

select
    c.company_code,
    c.founder,
    count(distinct lm.lead_manager_code) cnt_lm,
    count(distinct sm.senior_manager_code) cnt_sm,
    count(distinct m.manager_code) cnt_m,
    count(distinct em.employee_code) cnt_em
from 
    Company as c
left join 
    Lead_Manager as lm
on 
    lm.company_code = c.company_code
left join
    Senior_Manager as sm
on
    sm.company_code = c.company_code
left join
    Manager as m
on 
    m.company_code = c.company_code
left join
    Employee as em
on em.company_code = c.company_code
group by 1,2 order by 1;
    
    
