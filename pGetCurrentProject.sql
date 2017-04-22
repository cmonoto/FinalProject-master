CREATE DEFINER=`root`@`localhost` PROCEDURE `pGetCurrentProject`(eid int)
BEGIN

SELECT p.pid,p.pname, p.start_date,p.end_date,p.location 
FROM projects as p,employee_project as pe
WHERE pe.eid = eid AND pe.pid = p.pid
AND start_date <= SYSDATE() AND end_date >= SYSDATE()
ORDER BY p.end_date asc;



END