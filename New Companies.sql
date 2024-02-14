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
    
    
