select ename, sal*12+nvl(comm, 0)as Annsal
from emp
/
