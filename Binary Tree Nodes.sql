select 
    N,
    case 
        when 
            p is null
        then 
            'Root'
        when 
            p is not null
        then
            case
                when
                    N in (select distinct p from bst)
                then
                    'Inner'
                else
                    'Leaf'
            end
        end as node
from bst order by N
            
        
