select
title,
title_of_courtesy, COUNT(*) as number_of_employees
from employees
group by title, title_of_courtesy